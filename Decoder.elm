module Decoder exposing (..)

import Json.Decode as Decode exposing ((:=))


type Foo
    = Bar String


decode : Decode.Decoder Foo
decode =
    "type" := Decode.string `Decode.andThen` (\_ -> Decode.object1 Bar ("name" := Decode.string))


barJson : String
barJson =
    """
      {
        "type": "bar",
        "name": "MyBar"
      }
      """


decoded : Result String Foo
decoded =
    Decode.decodeString decode barJson


_ =
    Debug.log "decoded?" decoded
