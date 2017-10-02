module Main exposing (..)

import Html exposing (..)


-- STRINGS
--
-- write a function that takes two strings and concats them together


stringConcat : String -> String -> String
stringConcat s1 s2 =
    s1 ++ s2



-- write a function that takes a string and reverses it (a lot easier than it looks)


stringReverse : String -> String
stringReverse s =
    String.reverse s



-- NUMBERS
--
-- add adds two numbers together


add : Int -> Int -> Int
add x y =
    x + y



-- write a function that squares the Int given to it


square : Int -> Int
square x =
    x * x



-- multiply takes two numbers and multiplies them together


multiply : Int -> Int -> Int
multiply x y =
    x * y



-- write a function that adds 1 to the argument given to it, reusing the add function you wrote


plusOne : Int -> Int
plusOne =
    add 1



-- double multiplies its argument by 2, write it using multiply from earlier


double : Int -> Int
double =
    multiply 2



-- isTeenage takes an age (Int) and returns True if it is a teenager, false if not


isTeenage : Int -> Bool
isTeenage age =
    (age > 12) && (age < 20)



-- LISTS
--
-- write a function that concats two lists together


listConcat : List a -> List a -> List a
listConcat l1 l2 =
    l1 ++ l2



-- write a function that returns the length of a list


listLength : List a -> Int
listLength l =
    List.length l



-- IF-ELSE-THEN
--
-- write a function which takes a Int and returns a string which says whether the Int was
-- 'negative', 'positive' or 'zero'


negativeOrPositive : Int -> String
negativeOrPositive n =
    if n < 0 then
        "n is negative"
    else if n > 0 then
        "n is positive"
    else
        "n is zero"



-- write a function that returns the absolute value of a Int using `if-then-else`


myAbs : Int -> Int
myAbs n =
    if n < 0 then
        -n
    else
        n



-- CASE STATEMENT
--
-- use a case statement to write a function that takes numbers 0-5 and turns them into strings.
-- make sure you have a fallback case too


digitToString : Int -> String
digitToString n =
    case n of
        0 ->
            "zero"

        1 ->
            "one"

        2 ->
            "two"

        3 ->
            "three"

        4 ->
            "four"

        5 ->
            "five"

        _ ->
            "many"



-- isMultipleof3 does what it says


isMultipleof3 : Int -> Bool
isMultipleof3 n =
    case n % 3 of
        0 ->
            True

        _ ->
            False



-- write the myAbs again, this time using a case statement


myOtherAbs : Int -> Int
myOtherAbs n =
    case n < 0 of
        True ->
            -n

        False ->
            n



-- come up with a function that takes a Int and returns 'fizz' if it is a multiple of 3, 'buzz'
-- if it is a multiple of 5, or 'fizzbuzz if it is a multiple of both'


fizzBuzz : Int -> String
fizzBuzz n =
    case ( n % 3 == 0, n % 5 == 0 ) of
        ( True, False ) ->
            "fizz"

        ( False, True ) ->
            "buzz"

        ( True, True ) ->
            "fizzbuzz"

        _ ->
            toString n



-- LET expression
--
-- rewrite capitalizeWord using a let in expression, setting variables firstLetter and otherLetters
-- capitalizeWord "elm" = "Elm"


capitalizeWord : String -> String
capitalizeWord word =
    String.toUpper (String.left 1 word) ++ String.dropLeft 1 word


myCapitalizeWord : String -> String
myCapitalizeWord word =
    let
        firstLetter =
            String.left 1 word

        otherLetters =
            String.dropLeft 1 word
    in
        String.toUpper firstLetter ++ otherLetters



-- TUPLES --
--
-- fst takes a tuple and returns the first element
-- fst (1,2) = 1


fst : ( a, b ) -> a
fst t =
    Tuple.first t



-- snd takes a tuple and return the second element
-- snd (1,2) = 2


snd : ( a, b ) -> b
snd t =
    Tuple.second t



-- area takes a tuple with height as first element and width as second and returns the area


area : ( Int, Int ) -> Int
area t =
    Tuple.first t * Tuple.second t



-- rewrite area using `let-in` expression assigning intermediate variables to width and height


area1 : ( Int, Int ) -> Int
area1 t =
    let
        width =
            Tuple.first t

        height =
            Tuple.second t
    in
        width * height



-- rewrite area using pattern matching


area2 : ( Int, Int ) -> Int
area2 ( width, height ) =
    width * height



-- write a function that takes an number and a list and splits the list at the number given and
-- and returns the two lists in a tuple


splitList : Int -> List a -> ( List a, List a )
splitList n list =
    ( List.take n list, List.drop n list )



-- PIPES
--


testSpec : List ( Bool, String )
testSpec =
    [ ( stringConcat "hello" "world" == "helloworld", "stringConcat" )
    , ( stringReverse "stressed" == "desserts", "stringReverse" )
    , ( add 4 5 == 9, "add" )
    , ( square 3 == 9, "square" )
    , ( multiply 4 5 == 20, "mulitply" )
    , ( plusOne 4 == 5, "plusOne" )
    , ( double 20 == 40, "double" )
    , ( isTeenage 13 == True, "isTeenage" )
    , ( isTeenage 20 == False, "isTeenage1" )
    , ( listConcat [ 1, 2, 3 ] [ 4, 5, 6 ] == [ 1, 2, 3, 4, 5, 6 ], "listConcat" )
    , ( listLength [ 'a', 'b', 'c' ] == 3, "listLength" )
    , ( negativeOrPositive -1 == "n is negative", "negativeOrPositive" )
    , ( negativeOrPositive 1 == "n is positive", "negativeOrPositive1" )
    , ( negativeOrPositive 0 == "n is zero", "negativeOrPositive2" )
    , ( myAbs -2 == 2, "abs" )
    , ( myAbs 2 == 2, "abs1" )
    , ( digitToString 3 == "three", "digitToString" )
    , ( digitToString 5 == "five", "digitToString" )
    , ( isMultipleof3 5 == False, "isMultipleof3" )
    , ( isMultipleof3 6 == True, "isMultipleof3" )
    , ( myOtherAbs -2 == 2, "abs" )
    , ( myOtherAbs 2 == 2, "abs1" )
    , ( fizzBuzz 15 == "fizzbuzz", "fizzBuzz" )
    , ( fizzBuzz 12 == "fizz", "fizzBuzz1" )
    , ( fizzBuzz 10 == "buzz", "fizzBuzz2" )
    , ( myCapitalizeWord "elm" == "Elm", "myCapitalizeWord" )
    , ( fst ( 4, 5 ) == 4, "fst" )
    , ( snd ( "react", "elm" ) == "elm", "elm" )
    , ( area ( 4, 5 ) == 20, "area" )
    , ( area1 ( 4, 5 ) == 20, "area1" )
    , ( area2 ( 4, 5 ) == 20, "area2" )
    , ( splitList 2 [ 1, 2, 3, 4 ] == ( [ 1, 2 ], [ 3, 4 ] ), "splitList" )
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
        [ div [] [ ul [] (List.map testOutputToString testSpec) ]
        , div [] [ text <| testSummary <| testsPassed testSpec ]
        ]
