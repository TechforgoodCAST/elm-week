module Solutions.Guardian exposing (..)

import Html exposing (..)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (..)
import SampleJson


type alias Article =
    { title : String
    , section : String
    , url : String
    }


main : Html msg
main =
    text <| toString <| decodeString guardianDecoder SampleJson.guardianApiString


guardianDecoder : Decoder (List Article)
guardianDecoder =
    at [ "response", "results" ] (list articleDecoder)


articleDecoder : Decoder Article
articleDecoder =
    decode Article
        |> required "webTitle" string
        |> required "sectionName" string
        |> required "webUrl" string
