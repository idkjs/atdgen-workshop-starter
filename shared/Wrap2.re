// 2. Change `domain_rating` to be a variant, with three values:
// - `Poor`: if domain rating is < 33
// - `Average`: if domain rating is > 33 and < 66
// - `Good`: if domain rating is > 66

module DomainRating = {
  type t = int;
  type rating =
    | Good
    | Average
    | Poor;
  // exception ShouldNeverHappen;
  // let wrap =
  //   fun
  //   | x when x <= 33 => Poor
  //   | x when x > 33 && x < 66 => Average
  //   | x when x >= 66 => Good
  //   | _ => failwith("ShouldNeverHappen");
  let wrap =
    fun
    | x when x <= 33 => "Poor"
    | x when x > 33 && x < 66 => "Average"
    | x when x >= 66 => "Good"
    | _ => failwith("ShouldNeverHappen");
  let unwrap =
    fun
    | Good => "Good"
    | Average => "Average"
    | Poor => "Poor;";

  // let show = t => t |> int_of_string |> wrap |> unwrap;
  // let show:t=>string = t => t  |> wrap |> unwrap;
  let show: int => string = t => t |> wrap;
};
