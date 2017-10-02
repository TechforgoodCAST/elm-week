module DeeplyNested exposing (..)

import Html exposing (..)
import Json.Decode exposing (..)
import Json.Decode.Pipeline exposing (..)
import SampleJson exposing (..)


main : Html msg
main =
    text <| toString <| decodeString rescueDecoder deeplyNestedString


type alias RescuedData =
    { saved1 : String
    , saved2 : String
    , savedList : List Int
    }


rescueDecoder : Decoder RescuedData
rescueDecoder =
    decode RescuedData
        |> requiredAt [ "key1", "key2", "key3", "key4" ] string
        |> requiredAt [ "key1", "key2", "key5" ] string
        |> required "list_of_numbers" (list int)
