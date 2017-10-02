module TodoJson exposing (..)

import Html exposing (..)
import Json.Decode as Json exposing (..)
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
    Json.map3 Todo
        (field "task" string)
        (field "completed" bool)
        (field "urgent" bool)
