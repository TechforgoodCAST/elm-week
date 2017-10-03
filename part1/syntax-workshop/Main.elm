module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


-- write a function that takes two strings and concats them together


stringConcat s1 s2 =
    s1 ++ s2



--
-- write a function that takes a string and reverses it (take a look at Elm's list module)
--
-- stringReverse = ?
--
-- add adds two numbers together
--
-- add = ?
--
-- write a function that squares the Int given to it
--
-- square = ?
--
-- multiply takes two numbers and multiplies them together
--
-- multiply = ?
--
-- write a function that adds 1 to the argument given to it, reusing the add function you wrote
--
-- plusOne = ?
--
-- double multiplies its argument by 2, write it using multiply from earlier
--
--
-- double = ?
--
-- isTeenage takes an age (a number) and returns True if it is a teenager, false if not
--
-- isTeenage = ?
--
-- write a function that concats two lists together
--
-- listConcat = ?
--
-- write a function that returns the length of a list
--
-- listLength = ?
--
-- write a function which takes a Int and returns a string which says whether the Int was
-- 'negative', 'positive' or 'zero'
--
-- negativeOrPositive = ?
--
-- write a function that returns the absolute value of a Int using `if-then-else`
--
-- myAbs = ?
--
-- use a case statement to write a function that takes numbers 0-5 and turns them into strings.
-- make sure you have a fallback case too
--
-- digitToString = ?
--
-- isMultipleof3 does what it says
--
-- isMultipleof3 = ?
--
-- write the myAbs again, this time using a case statement
--
-- myOtherAbs = ?
--
-- come up with a function that takes a Int and returns 'fizz' if it is a multiple of 3, 'buzz'
-- if it is a multiple of 5, or 'fizzbuzz if it is a multiple of both'
--
-- fizzBuzz = ?
--
-- rewrite capitalizeWord using a let in expression, setting intermediate variables firstLetter and otherLetters
--


capitalizeWord word =
    String.toUpper (String.left 1 word) ++ String.dropLeft 1 word



-- myCapitalizeWord = ?
--
-- fst takes a tuple and returns the first element
--
-- fst = ?
--
-- snd takes a tuple and return the second element
--
-- snd = ?
--
-- area takes a tuple with height as first element and width as second and returns the area
--
-- area = ?
--
-- rewrite area using `let-in` expression assigning intermediate variables to width and height
--
-- area1 = ?
--
-- rewrite area using pattern matching
--
-- area2 = ?
--
-- write a function that takes an number and a list and splits the list at the number given and
-- and returns the two lists in a tuple
--
-- splitList = ?
--
-- use pattern matching and a case statement to write a function that takes a list and returns a
-- string informing you how many elements a list has
-- the return values should be "empty list", "one element", "two elements", "many elements"
--
-- listDescritption = ?
--


steppenwolf =
    { name = "Steppenwolf"
    , author = "Hermann Hesse"
    , pages = 237
    }


siddharta =
    { name = "Siddharta"
    , author = "Herman Hesse"
    , pages = 150
    }


island =
    { name = "Island"
    , author = "Aldous Huxley"
    , pages = 258
    }


doorsOfPerception =
    { name = "Doors of Perception"
    , author = "Aldous Huxley"
    , pages = 101
    }


aliceInWonderland =
    { name = "Alice in Wonderland"
    , author = "Lewis Carrol"
    , pages = 287
    }



-- write a function that takes one of the above records and returns the name field
-- name = ?
--
-- write a function that takes a record and returns the number of pages (this time use pattern matching)
--
-- pages = ?
--
-- over150 takes a record and returns True if it has over 250 pages, false if not
-- over150 = ?
--
-- updatePages takes a number and a record and updates a records page field
--
-- updatePages = ?
-- updateNameAndAuthor takes a two strings and a record and updates the name and author fields
--
-- updateNameAndAuthor = ?
--
-- write a function that takes a string, reverses, uppercases and then concats "CHOCOLATE " to the
-- beginning of it (use your stringReverse and stringConcat functions)
--
-- pipePractice = ?
--
-- write a function that takes a number adds 1 to it, doubles it, then squares it and then checks
-- if it is a teenage age. Use plusOne, double, square and isTeenage
--
--pipePractice1 = ?
--
-- TESTS


testSpec : List ( Bool, String )
testSpec =
    [ ( stringConcat "hello" "world" == "helloworld", "stringConcat" )
      --     , ( stringReverse "stressed" == "desserts", "stringReverse" )
      --     , ( add 4 5 == 9, "add" )
      --     , ( square 3 == 9, "square" )
      --     , ( multiply 4 5 == 20, "mulitply" )
      --     , ( plusOne 4 == 5, "plusOne" )
      --     , ( double 20 == 40, "double" )
      --     , ( isTeenage 13 == True, "isTeenage" )
      --     , ( isTeenage 20 == False, "isTeenage" )
      --     , ( listConcat [ 1, 2, 3 ] [ 4, 5, 6 ] == [ 1, 2, 3, 4, 5, 6 ], "listConcat" )
      --     , ( listLength [ 'a', 'b', 'c' ] == 3, "listLength" )
      --     , ( negativeOrPositive -1 == "n is negative", "negativeOrPositive" )
      --     , ( negativeOrPositive 1 == "n is positive", "negativeOrPositive" )
      --     , ( negativeOrPositive 0 == "n is zero", "negativeOrPositive" )
      --     , ( myAbs -2 == 2, "abs" )
      --     , ( myAbs 2 == 2, "abs1" )
      --     , ( digitToString 3 == "three", "digitToString" )
      --     , ( digitToString 5 == "five", "digitToString" )
      --     , ( isMultipleof3 5 == False, "isMultipleof3" )
      --     , ( isMultipleof3 6 == True, "isMultipleof3" )
      --     , ( myOtherAbs -2 == 2, "abs" )
      --     , ( myOtherAbs 2 == 2, "abs" )
      --     , ( fizzBuzz 15 == "fizzbuzz", "fizzBuzz" )
      --     , ( fizzBuzz 12 == "fizz", "fizzBuzz" )
      --     , ( fizzBuzz 10 == "buzz", "fizzBuzz" )
      --     , ( myCapitalizeWord "elm" == "Elm", "myCapitalizeWord" )
      --     , ( fst ( 4, 5 ) == 4, "fst" )
      --     , ( snd ( "react", "elm" ) == "elm", "elm" )
      --     , ( area ( 4, 5 ) == 20, "area" )
      --     , ( area1 ( 4, 5 ) == 20, "area1" )
      --     , ( area2 ( 4, 5 ) == 20, "area2" )
      --     , ( splitList 2 [ 1, 2, 3, 4 ] == ( [ 1, 2 ], [ 3, 4 ] ), "splitList" )
      --     , ( listDescritption [] == "empty list", "listDescritption" )
      --     , ( listDescritption [ 1 ] == "one element", "listDescritption" )
      --     , ( listDescritption [ 1, 2 ] == "two elements", "listDescritption" )
      --     , ( listDescritption [ 1, 2, 3, 4, 5 ] == "many elements", "listDescritption" )
      --     , ( name island == "Island", "name" )
      --     , ( pages doorsOfPerception == 101, "pages" )
      --     , ( over150 siddharta == False, "over150" )
      --     , ( updatePages 151 siddharta == { siddharta | pages = 151 }, "updatePages" )
      --     , ( updateNameAndAuthor "Der Steppenwolf" "Hermann Karl Hesse" steppenwolf
      --             == { steppenwolf
      --                 | name = "Der Steppenwolf"
      --                 , author = "Hermann Karl Hesse"
      --                }
      --       , "updateNameAndAuthor"
      --       )
      --     , ( pipePractice "stressed" == "CHOCOLATE DESSERTS", "pipePractice" )
      --     , ( pipePractice1 1 == True, "pipePractice1" )
      --     , ( pipePractice1 2 == False, "pipePractice1" )
    ]


testOutputToString : a -> Html msg
testOutputToString x =
    x
        |> toString
        |> text
        |> List.singleton
        |> li []


testsPassed : List ( Bool, String ) -> Bool
testsPassed l =
    l
        |> List.map (\( b, _ ) -> b)
        |> List.all (\b -> b == True)


testSummary : Bool -> String
testSummary b =
    if b then
        "All tests passed :)"
    else
        "Uh oh, some tests failed"


main : Html msg
main =
    div []
        [ div [] [ ol [] (List.map testOutputToString testSpec) ]
        , h2 [ class "ml2 blue" ] [ text <| testSummary <| testsPassed testSpec ]
        ]
