let rec last = function [] -> -1 (* idk tbh *) | [ x ] -> x | _ :: x -> last x
let arr : int list = [ 1; 2; 3; 4; 5; 6; 69; 420; 2137 ];;

print_int (last arr)
