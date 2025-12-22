(* Length of a List *)

let size list =
  let rec in_size cnt = function
    | [] -> cnt
    | x :: xx -> in_size (cnt + 1) xx
  in
  in_size 0 list
;;

let arr : int list = [ 0; 1; 2; 3; 4; 5; 6; 69; 420; 2137 ];;

print_int (size arr);
print_char '\n'
