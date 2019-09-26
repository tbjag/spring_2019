let rec append : 'a list -> 'a list -> 'a list = 
	fun xs ys ->
		match xs with
		| [] -> ys
		| x::xs -> x :: append xs ys

let rec to_upperl : char list -> char list =function
	| [] -> []
	| c::cs -> Char.uppercase_ascii c :: to_upperl cs

let rec map : ('a->'b) -> 'a list -> 'b list =
	fun f xs ->
	match xs with
	| [] -> []
	| x::xs -> f x::map f xs
let rec filter = fun p xs -> 
	match  xs with 
	| [] -> []
	| y:: ys ->
	if p y
	then y:: filter p ys
else filter p ys

let rec suml : int list -> int =function
	| [] -> 0
	| x::xs -> x + suml xs

let rec andl : bool list -> bool = function
	| [] -> true
	| x::xs -> x && andl xs

let rec concat :  'a list list ->  'a list = function
	| [] -> []
	| xs :: xss -> xs @ concat xss

let rec foldl : ('a -> 'b -> 'b) -> 'b -> 'a list -> 'b = fun f a xs -> 
	match xs with
	| [] -> a
	| x::xs -> f x(foldl f a xs)

let rec foldr = fun f a xs -> 
	match xs with
	| []->a
	| x::xs -> foldr f (f a x) xs

	(* Algebraic Data Types*)

type tree = Empty | Node of int*tree*tree

let rec sizet = function
	| Empty -> 0
	| Node(i,lt,rt) -> 1 + sizet lt + sizet rt
	
let rec is_leaf = function
	| Node(i,Empty,Empty) -> true
	| _ -> false
	
type 'a option = None | Some of 'a 

let rec lookup : 'a -> ('a*'b)list-> 'b option = fun k xs -> 
	match k ,xs with 
	| _,[] -> None
	| k,(x,y)::xs ->
		if k=x 
		then Some y 
		else lookup k xs

type 'a gtree = Node of  'a*'a gtree list

let gt1 = node(2,[Node(3,[]),Node(4,[])])

