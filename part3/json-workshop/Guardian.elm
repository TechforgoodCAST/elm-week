module Guardian exposing (..)

import Html exposing (..)
import SampleJson exposing (guardianApiString)


type alias Article =
    { title : String
    , section : String
    , url : String
    }


main : Html msg
main =
    text "render your solution here"



{--
  to run your decoder call `decodeString` (from Json.Decode) with your `decoder` and a `string` of raw JSON

  main might look something like:

    main = text <| toString <| decodeString articlesDecoder todoString

  You don't normally need to do the decodeString step however (Http handles this bit for you)
--}
