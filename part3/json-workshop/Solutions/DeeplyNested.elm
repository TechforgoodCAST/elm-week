module Solutions.DeeplyNested exposing (..)

import Html exposing (..)
import Json.Decode exposing (Decoder, string, list, int, decodeString)
import Json.Decode.Pipeline exposing (decode, required, requiredAt)
import SampleJson


main : Html msg
main =
    text <| toString <| decodeString rescueDecoder SampleJson.deeplyNestedString


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
