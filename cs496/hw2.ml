(* Theodore Jagodits CS 496 HW #2 "I pledge that I have abided by the Stevens Honor System"*)

type dTree = Leaf of int | Node of char * dTree * dTree  

let tLeft = Node('w',Node('x',Leaf(2),Leaf(5)),Leaf(8))
let tRight = Node('w',Node('x',Leaf(2),Leaf(5)),Node('y',Leaf(7),Leaf(5)))

(*a) dTree height*)

let rec dTree_height : dTree -> int = fun xs -> 
  match xs with
  | Leaf(x) -> 0
  | Node(h,y,z) -> 1 + max (dTree_height y) (dTree_height z)

(*b) dTree size*)

let rec dTree_size : dTree -> int = fun xs -> 
  match xs with
  | Leaf(_) -> 1
  | Node(_,y,z) -> 1 + (dTree_size y) + (dTree_size z)

(*c) dTree paths*)

let rec dTree_paths : dTree -> int list list = fun xs ->
  match xs with 
  | Leaf(_) -> [[]]
  | Node(_,y,z) -> List.map (fun xs -> [0]@xs) (dTree_paths y)@ List.map (fun ys -> [1]@ys) (dTree_paths z)

(*d) dTree perfect*)

let rec perfect_help xs =
  match xs with 
  | Leaf(_) -> 1
  | Node(_,y,z) -> (perfect_help y) - (perfect_help z) 

let dTree_is_perfect tree = 0 = perfect_help tree

(*e) dTree map*)

let rec dTree_map f g t =  
  match t with 
  | Leaf(x) -> Leaf(g x)
  | Node(x,y,z) -> Node(f x,dTree_map f g y,dTree_map f g z)

(*4 list to tree*)

let rec list_to_tree l = 
  match l with
  | [] -> Leaf(0)
  | x::xs -> Node(x, list_to_tree xs, list_to_tree xs)

let rec replace_leaf_help tree tuple = 
  match tree,tuple with 
  | Leaf(_),(_,x) -> Leaf(x)
  | Node(z,rtree,ltree),(x::xs,y) -> if x =0
                                    then Node(z, replace_leaf_help ltree (xs,y), rtree)
                                    else Node(z, ltree, replace_leaf_help rtree (xs,y))
  | (Node (_, _, _), ([], _)) -> failwith ("error")
let rec replace_leaf_at t f = 
  match f with 
  | [] -> t
  | x::xs -> replace_leaf_at (replace_leaf_help t x) xs

let bf_to_dTree f = 
  match f with 
  | (x,xs) -> replace_leaf_at (list_to_tree x) xs

