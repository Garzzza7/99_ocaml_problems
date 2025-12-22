(* N'th Element of a List *)

let rec nth (n : int) = function
  | [] -> None
  | x :: xx -> if n == 0 then Some x else nth (n - 1) xx
;;

let print = function
  | None -> print_string "out of range\n"
  | Some x ->
    print_int x;
    print_char '\n'
;;

let arr : int list = [ 1; 2; 3; 4; 5; 6; 69; 420; 2137 ];;

print (nth 0 arr);
print (nth 1 arr);
print (nth 2 arr);
print (nth 3 arr);
print (nth 4 arr);
print (nth 5 arr);
print (nth 6 arr);
print (nth 7 arr);
print (nth 8 arr);
print (nth 9 arr)
