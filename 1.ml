let rec my_last = function
  | [] -> -1 (* idk tbh *)
  | [ x ] -> x
  | _ :: x -> my_last x
;;

let rec good_last = function
  | [] -> None
  | [ x ] -> Some x
  | _ :: x -> good_last x
;;

let good_first = function
  | x :: xx -> Some x
  | [] -> None
;;

let print_atom = function
  | Some x ->
    print_int x;
    print_char '\n'
  | None -> print_string "invalid"
;;

let rec nth (n : int) = function
  | [] -> None
  | x :: xx -> if n = 0 then Some x else nth (n - 1) xx
;;

let rec fact (n : int) = if n == 1 then n else n * fact (n - 1)

let rec binom (n : int) (k : int) : int =
  if n == k then 1 else if k == 1 then n else binom (n - 1) (k - 1) + binom (n - 1) k
;;

let cos = function
  | [ x ] -> [ x ]
  | [] -> []
  | x -> x
;;

let rec print_int_arr : int list -> unit = function
  | x :: xx ->
    print_int x;
    print_char ' ';
    print_int_arr xx
  | [] -> print_char '\n'
;;

let rec print_char_arr : char list -> unit = function
  | x :: xx ->
    print_char x;
    print_char ' ';
    print_char_arr xx
  | [] -> print_char '\n'
;;

let arr : int list = [ 23498; 1; 2; 3; 4; 5; 6; 69; 420; 2137; 123123 ]
let arr1 : char list = [ 'a'; 'a'; 'a'; 'a'; 'a'; 'b' ]
let arr2 : int list = [ 69 ];;

print_int (my_last arr);
print_char '\n';
print_atom (good_first arr2);
print_char '\n';
print_int_arr arr;
print_char_arr arr1;
print_atom (nth 0 arr);
print_int (fact 5);
print_char '\n';
print_int (binom 12 8);
print_char '\n'
