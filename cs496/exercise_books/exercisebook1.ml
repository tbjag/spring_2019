(* Exercise Book 1*)

(* Exercise 4*)

type coordinate = Coordinate of float*float
type shape = Circle of float * coordinate | Rectangle of float * float * coordinate
type shape3D = Cube of float | Cylinder of float * float | Sphere of float
type person = Person of string * int * int * string 



let g_c = Coordinate(3.,4.)
let h_c = Coordinate(2.,4.)

let g_s = Circle(5.,Coordinate(2.,4.))
let h_s = Rectangle(0.3,4.,Coordinate(2.,4.))

let getX = function 
	| Coordinate(x,_) -> x

let getY = function
	| Coordinate(_,y) -> y

let distance = fun a b ->
	match a,b with
	| Coordinate(x1,y1),Coordinate(x2,y2) -> sqrt(((x2-.x1)**2.) +. ((y2-.y1)**2.))

let add = fun a b ->
	match a,b with
	| Coordinate(x1,y1),Coordinate(x2,y2) -> Coordinate((x1+.x2),(y1+.y2))

let area = fun y ->
	match y with
 | Circle(x,_) -> 3.14 *. (x**2.)
 | Rectangle(c,v,_) -> c *. v

let perimeter = fun y ->
	match y with 
	| Circle(x,_) -> 2. *. 3.14 *. x
	| Rectangle(c,v,_) -> 2. *.( c +. v)

let area = fun y -> 
	match y with 
	| Cube(x) -> 6. *. (x**2.)
	| Cylinder(r,h) -> 2. *. 3.14 *. r *. h +. (2. *. 3.14 *. (r**2.))
	| Sphere(r) -> 4. *. 3.14 *. (r**2.)

let volume = fun y -> 
	match y with 
	| Cube(r) -> r**3.
	| Cylinder(r,h) -> 3.14 *. (r**2.) *. h
	| Sphere(r) -> (4./.3.) *. 3.14 *. (r**3.)

(*Exercise 5*)

type sBtree = Leaf of int | Node of sBtree * sBtree

let is_node = function 
	| Node(_) -> true
	| Leaf(_) -> false

let is_leaf = function 
	| Node(_) -> false
	| Leaf(_) -> true

let rec string_of_sbtree = function 
	| Leaf(x) -> string_of_int x
	| Node(x,y) -> "(" ^ string_of_sbtree x ^ " " ^ string_of_sbtree y ^ ")"

(* Exercise 6 *)

type 'a btree = Leaf of 'a | Node of 'a * 'a btree * 'a btree

let t= Node(6,Node(2,Leaf 1,Node(4,Leaf 3, Leaf 5)),Node(7, Leaf 8, Leaf  9))

let rec inOrder t = match t with  
	| Leaf l -> [l]
	| Node(x,y,z) -> inOrder y @ [x] @ inOrder z

let rec preOrder t = match t with  
	| Leaf l -> [l]
	| Node(x,y,z) -> [x] @ preOrder y @ preOrder z

let rec postOrder t = match t with  
	| Leaf l -> [l]
	| Node(x,y,z) -> postOrder y @  postOrder z @ [x]

(* Exercise 7 *)

let rec btree_product = function 
	| Leaf l -> l
	| Node(n,lt,rt) -> n * btree_product lt * btree_product rt

(* Exercise 8 *)

let rec btree_mem = fun x tree -> match tree with 
	| Leaf(u) -> if u = x then true else false
	| Node(n, rt, lt) -> if n = x then true else btree_mem x rt || btree_mem x lt

(* Exercise 9 *)

let rec btree_bimap fLeaf fNode tree = match tree with
	| Leaf(x) -> Leaf(fLeaf x)
	| Node(x,lt,rt) -> Node(fNode x, btree_bimap fLeaf fNode lt, btree_bimap fLeaf fNode rt)

(* Exercise 10 *)

let rec btree_max = function  
	| Leaf(x) -> x
	| Node(n,lt,rt) -> max n (max (btree_max lt) (btree_max rt))

(* Exercise 11 *)

let rec btree_bst = function
	| Leaf(_) -> false
	| Node(x,lt,rt) -> 
		if (x > btree_max lt) && (x < btree_max rt)
		then true
		else btree_bst lt && btree_bst rt

(* Exercise 12 *)

let root_of_btree = function 
	| Leaf(x) -> x
	| Node(x,_,_) -> x

(* Exercise 13 *)

let rec level n tree = match n,tree with
	| n, Leaf(l) -> if n = 0 then [l] else []
	| n, Node(v,lt,rt) -> if n = 0 then [v] else level (n-1) lt @ level (n-1) rt

