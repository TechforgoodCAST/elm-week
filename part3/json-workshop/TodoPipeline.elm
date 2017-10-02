module TodoPipeline exposing (..)

import Html exposing (..)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (..)
import SampleJson exposing (todosString)


type alias Todo =
    { task : String
    , completed : Bool
    , urgent : Bool
    }


main : Html msg
main =
    text <| toString <| decodeString todosDecoder todosString


todosDecoder : Decoder (List Todo)
todosDecoder =
    at [ "data", "todos" ] (list todoDecoder)


todoDecoder : Decoder Todo
todoDecoder =
    decode Todo
        |> required "task" string
        |> required "completed" bool
        |> required "urgent" bool
