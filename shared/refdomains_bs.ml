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

let write__1 = (
    Atdgen_codec_runtime.Encode.string
  |> Atdgen_codec_runtime.Encode.contramap (Js.Date.toString)
)
let read__1 = (
  (
    Atdgen_codec_runtime.Decode.string
  ) |> (Atdgen_codec_runtime.Decode.map (Js.Date.fromString))
)
let write_string2date = (
  write__1
)
let read_string2date = (
  read__1
)
let write_refdomain = (
  Atdgen_codec_runtime.Encode.make (fun (t : refdomain) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.string
            )
          ~name:"refdomain"
          t.refdomain
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"backlinks"
          t.backlinks
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"refpages"
          t.refpages
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_string2date
            )
          ~name:"first_seen"
          t.first_seen
        ;
          Atdgen_codec_runtime.Encode.field
            (
            write_string2date
            )
          ~name:"last_visited"
          t.last_visited
        ;
          Atdgen_codec_runtime.Encode.field
            (
            Atdgen_codec_runtime.Encode.int
            )
          ~name:"domain_rating"
          t.domain_rating
      ]
    )
  )
)
let read_refdomain = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          refdomain =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.string
              |> Atdgen_codec_runtime.Decode.field "refdomain"
            ) json;
          backlinks =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "backlinks"
            ) json;
          refpages =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "refpages"
            ) json;
          first_seen =
            Atdgen_codec_runtime.Decode.decode
            (
              read_string2date
              |> Atdgen_codec_runtime.Decode.field "first_seen"
            ) json;
          last_visited =
            Atdgen_codec_runtime.Decode.decode
            (
              read_string2date
              |> Atdgen_codec_runtime.Decode.field "last_visited"
            ) json;
          domain_rating =
            Atdgen_codec_runtime.Decode.decode
            (
              Atdgen_codec_runtime.Decode.int
              |> Atdgen_codec_runtime.Decode.field "domain_rating"
            ) json;
      } : refdomain)
    )
  )
)
let write__2 = (
  Atdgen_codec_runtime.Encode.list (
    write_refdomain
  )
)
let read__2 = (
  Atdgen_codec_runtime.Decode.list (
    read_refdomain
  )
)
let write_response = (
  Atdgen_codec_runtime.Encode.make (fun (t : response) ->
    (
    Atdgen_codec_runtime.Encode.obj
      [
          Atdgen_codec_runtime.Encode.field
            (
            write__2
            )
          ~name:"refdomains"
          t.refdomains
      ]
    )
  )
)
let read_response = (
  Atdgen_codec_runtime.Decode.make (fun json ->
    (
      ({
          refdomains =
            Atdgen_codec_runtime.Decode.decode
            (
              read__2
              |> Atdgen_codec_runtime.Decode.field "refdomains"
            ) json;
      } : response)
    )
  )
)
