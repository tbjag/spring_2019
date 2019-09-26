(* Theodore Jagodits CS 496 HW #1 "I pledge that I have abided by the Stevens Honor System"*)
(* ******************************************** *)
(** Basic functions on finite automata *)
(* ******************************************** *)
(**
   Code stub for assignment 1
*)

type symbol = char
type input = char list

type state = string

(* transition function *)
type tf = (state * symbol * state) list

(* initial state * transition function * end state *)
type fa = { states: state list; start:state; tf: tf; final: state list}


(* ******************************************** *)
(* Examples of automata *)
(* ******************************************** *)

let a = {states = ["q0";"q1";"q2"];
         start = "q0";
         tf = [("q0",'a',"q1"); ("q1",'b',"q1"); ("q1",'c',"q2")];
         final = ["q2"]
		 }
let a2 = {states = ["q0";"q1";"q2";"q3";"q4"];
          start = "q0";
          tf = [("q0",'a',"q1"); ("q1",'b',"q1")
               ; ("q1",'c',"q2");  ("q3",'a',"q4")];
          final= ["q2"]
         }
let a3 = {states = ["q0";"q1";"q2";"q3";"q4"];
          start = "q0";
          tf = [("q0",'a',"q1"); ("q1",'b',"q1")
               ; ("q1",'c',"q2");  ("q3",'a',"q4")
			   ; ("q1",'c',"q3")];
          final= ["q2"]
         }
let a4 = {states = ["q0";"q1";"q2"];
         start = "q0";
         tf = [("q0",'a',"q1"); ("q1",'b',"q1"); ("q1",'c',"q2")];
         final = ["q2";"q5"]
		 }
let a5 = {states = ["q0";"q1";"q2";"q3"];
         start = "q4";
         tf = [("q0",'a',"q1"); ("q1",'b',"q1"); ("q1",'c',"q2")];
         final = ["q2"]
		 }
let a6 = {states = ["q0";"q1";"q2";"q3";"q4";"q5";"q7"];
         start = "q2";
         tf = [("q1",'c',"q7");("q1",'c',"q3");("q3",'v',"q4");("q0",'a',"q1"); ("q0",'b',"q2");("q4",'c',"q5")];
         final = ["q3";"q7"]
		 }
let tf_of_a = [("q0",'a',"q1"); ("q1",'b',"q1"); ("q1",'c',"q2");("q0",'a',"q2")]


(* ******************************************** *)
(* Helper functions *)
(* ******************************************** *)

let input_of_string s =
  let rec exp i l =
    if i < 0 then l else exp (i - 1) (s.[i] :: l) in
  exp (String.length s - 1) []
  
let rec drop_final : state -> state list -> state list = fun xstate droplst ->
	match xstate, droplst with
	| xstate,[] -> []
	| xstate,x::xs -> if ((xstate = x) = false) then drop_final xstate xs else x :: drop_final xstate xs
	
let rec help_check : state list -> state -> bool = fun xs c ->
	match xs,c with 
	| [],_ -> false
	| y::t,_ -> if y = c then true else help_check t c

let rec apply_transition_function2 : tf -> state -> symbol -> state = fun xs st sy ->
	match xs,st,sy with
	| [],_,_ -> " "
	| (x,y,z)::xs,st,sy -> 
		if (x=st && y=sy) 
		then z
		else apply_transition_function2 xs st sy

let rec next : tf -> state -> symbol -> state list = fun tfxs xstate xsymbol ->
	match tfxs,xstate,xsymbol with
	| [],_,_ -> []
	| (x,y,z)::xs,xstate,xsymbol ->
		if (xstate = x) && (xsymbol = y) 
		then (next xs xstate xsymbol) @ [z]
		else next xs xstate xsymbol

let rec is_in_final : state list -> state list -> bool = fun xs xstates ->
	match xs, xstates with
	| [],_ -> true
	| x::xs, xstates -> 
		if (help_check xstates x) 
		then is_in_final xs xstates 
		else false

let rec help_reach : tf -> state list -> state list = fun xtf xlist ->
	match xtf, xlist with 
	| [],xlist -> xlist
	| (x,_,y)::xs,xlist -> 
		if (help_check xlist x) && ((help_check xlist y) = false)
		then (help_reach xs (xlist @ [y]))
		else
			if help_check (help_reach xs xlist) x 
			then (help_reach xs (xlist @ [y]))
			else help_reach xs xlist
			
let rec drop_tf : tf -> state list -> tf = fun ogtf xstates ->
	match ogtf, xstates with
	| [], _ -> []
	| (x,z,y)::xs,xstates -> 
		if (help_check xstates x) || (help_check xstates y) 
		then drop_tf xs xstates @ [(x,z,y)]
		else drop_tf xs xstates

let rec drop_final : state list -> state list -> state list = fun droplst oglist ->
	match droplst, oglist with
	| _,[] -> []
	| droplst,x::xs -> 
		if (help_check droplst x) 
		then drop_final droplst xs @ [x]
		else drop_final droplst xs 

(* ******************************************** *)
(* Simulating automata *)
(* ******************************************** *)
(* applies transition on the type tf with a state and symbol *)
let rec apply_transition_function : tf -> state -> symbol -> state option = fun xs st sy ->
	match xs,st,sy with
	| [],_,_ -> None
	| (x,y,z)::xs,st,sy -> 
		if (x=st && y=sy) 
		then Some z 
		else apply_transition_function xs st sy

(* uses apply_transition_function2 to recursively cut down the input and move states by using helper to pass current state *)
let accept yfa inpt(*: fa -> input -> bool*) = 
	let rec help_accept : state -> fa -> input -> bool = fun xstate xfa xinput ->
		match xstate,xfa,xinput with
		| xstate,xfa,[] -> (help_check xfa.final xstate)
		| xstate,xfa,x::t -> help_accept (apply_transition_function2 xfa.tf xstate x) xfa t in 
		help_accept yfa.start yfa inpt

(*finds if deterministic by comparing copy of the transition function to itself and checking if any of the successors are the same *) 
let deterministic xfa = 
	let rec help_deterministic : tf -> tf -> bool = fun xcopy xtf ->
		match xcopy, xtf with
		| [],_ -> true
		| (x,y,z)::xs,xtf -> 
			if (List.length (next xtf x y)) > 1 
			then false 
			else help_deterministic xs xtf
			in help_deterministic xfa.tf xfa.tf

(*check if valid if the final and start are in states and if deterministic *)
let valid : fa -> bool = fun xfa -> (help_check xfa.states xfa.start) && (is_in_final xfa.final xfa.states) && (deterministic xfa)

(* finds reachable states by recursively checking the successors through the tf and then check again the ones it already passed.*)
let reachable : fa -> state list = fun xfa -> help_reach xfa.tf [xfa.start]

(*removes the states by checking reachable and dropping the ones that are not reachable*)
let remove_dead_states : fa -> fa = fun xfa ->
	{ 
	states = reachable xfa; 
	start = xfa.start;
	tf = drop_tf xfa.tf (reachable xfa); 
	final = drop_final (reachable xfa) xfa.final;
	}
