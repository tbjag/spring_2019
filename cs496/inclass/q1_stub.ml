


(* type definition of a binary tree *)
type 'a tree = Empty | Node of 'a*'a tree*'a tree



let rec take n xs =
  match n,xs with
  | 0,_ -> []
  | n,x::xs when n>0 -> x::take (n-1) xs
  | n,_ -> []

let rec drop n xs =
  match n,xs with
  | 0,xs -> xs
  | n,x::xs when n>0 -> drop (n-1) xs
  | n,xs -> xs

(* the split helper function *)
let split xs =
  let n = List.length xs
  in (take (n/2) xs,drop (n/2) xs)


(* Implement the mt function below *)
let rec mt f lst = function
	| [] -> Empty
	| x::xs -> (x,mt split 
	
	(* code here *)
