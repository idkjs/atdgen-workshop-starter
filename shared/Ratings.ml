module DomainRating = struct
type t = [ `Good of int  | `Average of int  | `Poor of int ]
exception ShouldNeverHappen
let wrap =
  function
  | x when x <= 33 -> `Poor x
  | x when (x > 33) && (x < 66) -> `Average x
  | x when x >= 66 -> `Good x
   | _ -> failwith "ShouldNeverHappen"
let unwrap = function | `Good _x -> "Good" | `Average _x -> "Average" | `Poor _x -> "Poor"

let show rating = rating wrap unwrap
end
