open Ast
open Ds
(* Theodore Jagodits HW 3 
 I pledge my honor that I have abided by the Stevens Honor System*)
let rec eval (en:env) (e:expr):exp_val =
  match e with
  | Int n           -> NumVal n
  | Var x           -> lookup en x
  | Let(x, e1, e2)  ->
    let v1 = eval en e1  in
    eval (extend_env en x v1) e2
  | IsZero(e1)      ->
    let v1 = eval en e1  in
    let n1 = numVal_to_num v1 in
    BoolVal (n1 = 0)
  | ITE(e1, e2, e3) ->
    let v1 = eval en e1  in
    let b1 = boolVal_to_bool v1 in
    if b1 then eval en e2 else eval en e3
  | Sub(e1, e2)     ->
    let v1 = eval en e1 in
    let v2 = eval en e2  in
    NumVal ((numVal_to_num v1) - (numVal_to_num v2))
  | Add(e1, e2)     -> 
    let v1 = eval en e1 in
    let v2 = eval en e2  in
    NumVal ((numVal_to_num v1) + (numVal_to_num v2))
  | Div(e1, e2)     ->
    let v1 = eval en e1 in
    let v2 = eval en e2  in
    NumVal ((numVal_to_num v1) / (numVal_to_num v2))
  | Mul(e1, e2)     -> 
    let v1 = eval en e1 in
    let v2 = eval en e2  in
    NumVal ((numVal_to_num v1) * (numVal_to_num v2))
  | Abs(e1)         ->
    let v1 = eval en e1 in
    NumVal(abs (numVal_to_num v1))
  | Cons(e1, e2)    -> 
    let v1 = eval en e1 in
    let v2 = eval en e2  in
    ListVal(v1 :: (listVal_to_list v2))
  | Hd(e1)          -> 
    let v1 = eval en e1 in
    List.hd (listVal_to_list v1)
  | Tl(e1)          -> 
    let v1 = eval en e1 in
    ListVal(List.tl (listVal_to_list v1))
  | Empty(e1)       -> (* supports both lists and trees *)
    let vs = eval en e1 in
    (match vs with 
      | TreeVal(vs) -> BoolVal(vs = Empty)
      | ListVal(vs) -> BoolVal(vs = [])
      | (NumVal _|BoolVal _) -> failwith("not a tree or list")
    )
  | EmptyList       -> ListVal []
  | EmptyTree       -> TreeVal Empty
  | Node(e1,lt,rt)  -> 
    let dt = eval en e1 in
    let v1 = eval en lt in
    let v2 = eval en rt in
    TreeVal(Node(dt,treeVal_to_tree v1,treeVal_to_tree v2))
  | CaseT(target,emptycase,id_e,id_lt,id_rt,nodecase) -> 
    let vt = eval en target in 
    (match vt with
      | TreeVal(Empty) -> eval en emptycase
      | TreeVal(Node(ev1,ev2,ev3)) -> let meh = extend_env en id_e ev1 in 
                      let meh2 = extend_env meh id_lt (TreeVal ev2) in
                      let meh3 = extend_env meh2 id_rt (TreeVal ev3) in
                      eval meh3 nodecase
      | _ -> failwith("not a tree")


    )


(***********************************************************************)
(* Everything above this is essentially the same as we saw in lecture. *)
(***********************************************************************)

(* Parse a string into an ast *)
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.prog Lexer.read lexbuf in
  ast


(* Interpret an expression *)
let interp (e:string):exp_val =
  e |> parse |> eval (empty_env ())
