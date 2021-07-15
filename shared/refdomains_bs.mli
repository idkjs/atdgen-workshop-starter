(* Auto-generated from "refdomains.atd" *)
              [@@@ocaml.warning "-27-32-35-39"]

type string2date = Refdomains_t.string2date

type refdomain = Refdomains_t.refdomain = {
  refdomain: string;
  backlinks: int;
  refpages: int;
  first_seen: string2date;
  last_visited: string2date;
  domain_rating: int
}

type response = Refdomains_t.response = { refdomains: refdomain list }

val read_string2date :  string2date Atdgen_codec_runtime.Decode.t

val write_string2date :  string2date Atdgen_codec_runtime.Encode.t

val read_refdomain :  refdomain Atdgen_codec_runtime.Decode.t

val write_refdomain :  refdomain Atdgen_codec_runtime.Encode.t

val read_response :  response Atdgen_codec_runtime.Decode.t

val write_response :  response Atdgen_codec_runtime.Encode.t

