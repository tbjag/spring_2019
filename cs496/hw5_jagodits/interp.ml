open Ast
open Ds
(*
Alex Kubecka, Theodore Jagodits
I pledge my honor that I have abided by the Stevens Honor System.
*)


let from_some = function
  | None -> failwith "from_some: None"
  | Some v -> v
    
let g_store = Store.empty_store 20 (NumVal 0)

let init_env =
  ExtendEnv("i", RefVal (Store.new_ref g_store (NumVal 1)),
   ExtendEnv("v",RefVal (Store.new_ref g_store (NumVal 5)),
    ExtendEnv("x",RefVal (Store.new_ref g_store (NumVal 10)),
      EmptyEnv)))
    
let rec apply_proc f a =
  match f with
  | ProcVal (x,b,env) ->
     eval_expr (extend_env env x a) b
  | _ -> failwith "apply_proc: Not a procVal"
and
  eval_expr (en:env) (e:expr) :exp_val =
  match e with
  | Int n          -> NumVal n
  | Var id          ->
    (match apply_env en id with
    | None -> failwith @@ "Variable "^id^" undefined"
    | Some ev ->  ev)
  | Unit -> UnitVal
  | ITE(e1, e2, e3)    ->
    let v1 = eval_expr en e1 in
    if boolVal_to_bool v1
    then eval_expr en e2
    else eval_expr en e3
  | Add(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) + (numVal_to_num v2))
  | Mul(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) * (numVal_to_num v2))
  | Sub(e1, e2)    ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2  in
    NumVal ((numVal_to_num v1) - (numVal_to_num v2))
  | IsZero(e) ->
    let v1 = eval_expr en e  in
    BoolVal (numVal_to_num v1=0)
  | Let(x, e1, e2) ->
    let v1 = eval_expr en e1
    in eval_expr (extend_env en x v1) e2
  | Proc(x,t,e)      -> ProcVal (x,e,en)
  | App(e1,e2)     ->
    let v1 = eval_expr en e1 in
    let v2 = eval_expr en e2 in
    apply_proc v1 v2
  | Letrec(tparam,id,param,tbody,body,e) ->
    eval_expr (ExtendEnvRec(id,param,body,en)) e
  | Set(id,e) ->
    let v=eval_expr en e
    in Store.set_ref g_store (refVal_to_int (from_some (apply_env en id))) v;
       NumVal 28
  | BeginEnd(es) ->
    List.fold_left (fun v e -> eval_expr en e) (NumVal 28) es
  | NewRef(e) ->
    RefVal(Store.new_ref g_store (eval_expr en e))
  | DeRef(e) ->
    let v1 = eval_expr en e
    in Store.deref g_store (refVal_to_int v1)
  | SetRef(e1,e2) ->
    let v1=eval_expr en e1
    in let v2=eval_expr en e2
    in Store.set_ref g_store (refVal_to_int v1) v2;
    UnitVal
  | TypeDecl(id,cs) -> UnitVal
  | Variant(tag,args) -> TaggedVariantVal(tag, List.map (eval_expr en) args)
  | Case(cond,branches) -> 
    let v1 =  eval_expr en cond in
  (match v1 with 
  |TaggedVariantVal(t1, t2) -> 
    (match List.find_opt (fun (Branch(btag, blist, _)) -> btag = t1 && List.length blist = List.length t2) branches with
      | Some Branch(_, blist, exp) -> 
        eval_expr (List.fold_left2 (fun env x y -> extend_env env y x) en t2 blist) exp
      | None -> failwith "Error: Branches must match")
    | _ -> failwith "Error: Must be TaggedVariantVal")  
  
  |Debug ->
    print_string "Environment:\n";
    print_string @@ string_of_env en;
    print_string "\nStore:\n";
    List.iteri (fun i s -> print_string (string_of_int i^"->"
                                                 ^s^"\n")) @@ List.map
      string_of_expval @@ Store.store_to_list g_store;
    UnitVal
  | _ -> failwith("Not implemented: "^string_of_expr e)
and
  eval_prog (Ast.AProg e) = eval_expr init_env e 



(***********************************************************************)
(* Everything above this is essentially the same as we saw in lecture. *)
(***********************************************************************)

(* Parse a string into an ast *)


let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


(* Interpret an expression *)
let interp (e:string) : exp_val =
  e |> parse |> eval_prog 

(*let test (n:int) : string =
  Examples.example n |> parse |> eval_prog  
*)
let ex1 = "
let x = 7  
in let y = 2 
   in let y = let x = x-1 
              in x-y 
      in (x-8)- y"

let ex2 = "
   let g = 
      let counter = 0 
      in proc(d) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in (g 11)-(g 22)"

let ex3 = "
  let g = 
     let counter = newref(0) 
     in proc (d) {
         begin
          setref(counter, deref(counter)+1);
          deref(counter)
         end
       }
  in (g 11) - (g 22)"

let ex4 = "
   let g = 
      let counter = 0 
      in proc(d) {
         begin 
           set counter = counter+1; 
           counter
         end
         }
   in debug"

let ex5 = "
let a = 3
in let p = proc(x) { set x = 4 }
in begin 
         (p a); 
         a 
       end"
