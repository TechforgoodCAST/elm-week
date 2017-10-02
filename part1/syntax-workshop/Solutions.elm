module Solutions exposing (..)

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


fst : ( a, b ) -> a
fst t =
    Tuple.first t



-- snd takes a tuple and return the second element


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



-- use pattern matching and a case statement to write a function that takes a list and returns a
-- string informing you how many elements a list has
-- the return values should be "empty list", "one element", "two elements", "many elements"


listDescritption : List a -> String
listDescritption list =
    case list of
        [] ->
            "empty list"

        [ _ ] ->
            "one element"

        [ a, b ] ->
            "two elements"

        _ ->
            "many elements"



-- RECORDS


type alias Book =
    { name : String
    , author : String
    , pages : Int
    }


steppenwolf : Book
steppenwolf =
    { name = "Steppenwolf"
    , author = "Hermann Hesse"
    , pages = 237
    }


siddharta : Book
siddharta =
    { name = "Siddharta"
    , author = "Herman Hesse"
    , pages = 150
    }


island : Book
island =
    { name = "Island"
    , author = "Aldous Huxley"
    , pages = 258
    }


doorsOfPerception : Book
doorsOfPerception =
    { name = "Doors of Perception"
    , author = "Aldous Huxley"
    , pages = 101
    }



-- write a function that takes one of the above records and returns the name field


name : Book -> String
name record =
    .name record



-- write a function that takes a record and returns the number of pages (this time use pattern matching)


pages : Book -> Int
pages { pages } =
    pages



-- over150 takes a record and returns True if it has over 250 pages, false if not


over150 : Book -> Bool
over150 { pages } =
    pages > 150



-- updatePages takes a number and a record and updates a records page field


updatePages : Int -> Book -> Book
updatePages n rec =
    { rec | pages = n }



-- updateNameAndAuthor takes a two strings and a record and updates the name and author fields


updateNameAndAuthor : String -> String -> Book -> Book
updateNameAndAuthor name author rec =
    { rec | name = name, author = author }



-- PIPE OPERATOR
--
-- write a function that takes a string, reverses, uppercases and then concats "CHOCOLATE " to the
-- beginning of it (use your stringReverse and stringConcat functions)


pipePractice : String -> String
pipePractice string =
    string
        |> stringReverse
        |> String.toUpper
        |> stringConcat "CHOCOLATE "



-- write a function that takes a number adds 1 to it, doubles it, then squares it and then checks
-- if it is a teenage age. Use plusOne, double, square and isTeenage


pipePractice1 : Int -> Bool
pipePractice1 n =
    n
        |> plusOne
        |> double
        |> square
        |> isTeenage
