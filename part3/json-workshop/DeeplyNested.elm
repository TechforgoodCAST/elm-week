module DeeplyNested exposing (..)

import Html exposing (..)
import SampleJson exposing (deeplyNestedString)


main : Html msg
main =
    text "render your solution here"


type alias RescuedData =
    { saved1 : String
    , saved2 : String
    , savedList : List Int
    }



{--
  to run your decoder call `decodeString` (from Json.Decode) with your `decoder` and a `string` of raw JSON

  main might look something like:

    main = text <| toString <| decodeString rescueDecoder todoString

  You don't normally need to do the decodeString step however (Http handles this bit for you)
--}
