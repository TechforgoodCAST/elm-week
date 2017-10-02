module Solutions.Todo exposing (..)

import Html exposing (..)
import Json.Decode as Decode exposing (Decoder, decodeString, string, bool, list, at)
import Json.Decode.Pipeline exposing (decode, required)
import SampleJson


type alias Todo =
    { task : String
    , completed : Bool
    , urgent : Bool
    }


main : Html msg
main =
    text <| toString <| decodeString todosDecoder SampleJson.todosString


todosDecoder : Decoder (List Todo)
todosDecoder =
    at [ "data", "todos" ] (list todoDecoder)


todoDecoder : Decoder Todo
todoDecoder =
    decode Todo
        |> required "task" string
        |> required "completed" bool
        |> required "urgent" bool



{--
  the decoder below is equivalent to the one above
  under the hood decode pipeline uses the core functions from Json.Decode
  the pipeline style makes it easier to add new fields -- you have to keep changing to map3, map4 etc to add more fields
--}
-- todoDecoder : Decoder Todo
-- todoDecoder =
--     Json.Decode.map3 Todo
--         (field "task" string)
--         (field "completed" bool)
--         (field "urgent" bool)
