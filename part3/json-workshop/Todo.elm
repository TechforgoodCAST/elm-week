module TodoPipeline exposing (..)

import Html exposing (..)
import SampleJson exposing (todosString)


type alias Todo =
    { task : String
    , completed : Bool
    , urgent : Bool
    }


main : Html msg
main =
    text "render your solution here"



{--
  to run your decoder call `decodeString` (from Json.Decode) with your `decoder` and a `string` of raw JSON

  main might look something like:

    main = text <| toString <| decodeString todosDecoder todoString

  You don't normally need to do the decodeString step however (Http handles this bit for you)
--}
