let rec print_list = function
  (* helper to print a list *)
  | [] -> ()
  | h :: t ->
    print_int h;
    print_string " ";
    print_list t
;;

let rec last_two = function
  | [] -> [ -1; -1 ] (* idk tbh *)
  | [ x ] -> [ -1; -1 ] (* idk tbh v2 *)
  | [ x; y ] -> [ x; y ]
  | _ :: x -> last_two x
;;

let arr : int list = [ 1; 2; 3; 4; 5; 6; 69; 420; 2137 ];;

print_list (last_two arr)
