(* Auto-generated from "refdomains.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type string2date = Js.Date.t

type refdomain = {
  refdomain: string;
  backlinks: int;
  refpages: int;
  first_seen: string2date;
  last_visited: string2date;
  domain_rating: int
}

type response = { refdomains: refdomain list }
