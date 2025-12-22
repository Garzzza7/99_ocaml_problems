(* Last Two Elements of a List *)

let rec last_two = function
  | [] -> None
  | [ x ] -> None
  | [ x; y ] -> Some (x, y)
  | x :: xx -> last_two xx
;;

let print = function
  | None -> ()
  | Some (x, y) ->
    print_int x;
    print_char ' ';
    print_int y;
    print_char '\n'
;;

let arr : int list = [ 1; 2; 3; 4; 5; 6; 69; 420; 2137 ];;

print_string "res = ";
print (last_two arr)
