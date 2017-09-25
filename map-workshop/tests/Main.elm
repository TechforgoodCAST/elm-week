port module Main exposing (..)

import Expect
import Fuzz exposing (..)
import Json.Encode exposing (Value)
import MapExercises exposing (..)
import Test exposing (..)
import Test.Runner.Node exposing (TestProgram, run)


allTests : Test
allTests =
    describe "All Tests"
        [ listTests
        , maybeTests
        , resultTests
        ]


listTests : Test
listTests =
    describe "list tests"
        [ describe "double list"
            [ test "should double numbers in list" <|
                \() ->
                    Expect.equal
                        (double [ 1, 2, 3, 4, 5 ])
                        [ 2, 4, 6, 8, 10 ]
            , test "can handle negatives" <|
                \() ->
                    Expect.equal
                        (double [ -1, -2, -3, -4, -5 ])
                        [ -2, -4, -6, -8, -10 ]
            ]
        , describe "tuples tests"
            [ test "extracts only the numbers" <|
                \() ->
                    Expect.equal
                        (tuples
                            [ ( 0, "dont" )
                            , ( 1, "take" )
                            , ( 2, "these" )
                            , ( 3, "values" )
                            , ( 4, "please" )
                            ]
                        )
                        (List.range 0 4)
            ]
        , describe "fuzz tuples"
            -- tupleFuzzer generates random lists of (String, Int)s
            [ fuzz tupleFuzzer "extracts only the numbers" <|
                \stringInts ->
                    Expect.equal
                        (tuples stringInts)
                        (List.map Tuple.first stringInts)
            ]
        , describe "bools tests"
            [ test "returns list of bools where number is less than 3" <|
                \() ->
                    Expect.equal
                        (bools [ 1, 2, 3, 4, 5 ])
                        [ True, True, False, False, False ]
            ]
        ]


maybeTests : Test
maybeTests =
    describe "maybes tests"
        [ describe "headOfTheList Fuzz tests"
            [ fuzz (list string) "gets the head of the list" <|
                \xs ->
                    Expect.equal
                        (headOfTheList xs)
                        (List.head xs)
            , fuzz (list (maybe int)) "gets the head of the list" <|
                \xs ->
                    Expect.equal
                        (headOfTheList xs)
                        (List.head xs)
            ]
        , describe "concatMeMaybe tests"
            [ test "adds a string to the maybe" <|
                \() ->
                    Expect.equal
                        (concatMeMaybe ", and this is crazy" (Just "I just met you"))
                        (Just "I just met you, and this is crazy")
            , test "handles nothing values" <|
                \() ->
                    Expect.equal
                        (concatMeMaybe "But here's my number" Nothing)
                        Nothing
            ]
        , describe "numberOrZero tests"
            [ test "returns the number from a Just" <|
                \() ->
                    Expect.equal (numberOrZero (Just 3)) 3
            , test "returns zero if given nothing" <|
                \() ->
                    Expect.equal (numberOrZero Nothing) 0
            ]
        , describe "numberOrZero fuzz tests"
            [ fuzz (maybe int) "returns int correct" <|
                \maybeInt ->
                    Expect.equal
                        (numberOrZero maybeInt)
                        (Maybe.withDefault 0 maybeInt)
            ]
        , describe "addMaybes tests"
            [ test "adds two numbers inside Justs together" <|
                \() ->
                    Expect.equal
                        (addMaybes (Just 3) (Just 5))
                        (Just 8)
            , test "If either is Nothing return Nothing" <|
                \() ->
                    Expect.equal
                        (addMaybes Nothing (Just 800))
                        Nothing
            , test "If either is Nothing return Nothing" <|
                \() ->
                    Expect.equal
                        (addMaybes (Just 800) Nothing)
                        Nothing
            ]
        ]


resultTests : Test
resultTests =
    describe "result tests"
        [ describe "getMyAge tests"
            [ test "parses an age string correctly" <|
                \() ->
                    Expect.equal
                        (getMyAge "28")
                        (Ok 28)
            , test "returns an Err if given and invalid age" <|
                \() ->
                    Expect.equal
                        (getMyAge "errhmagerrd")
                        (Err "could not convert string 'errhmagerrd' to an Int")
            ]
        , describe "makeMe3YearsOlder tests"
            [ test "adds 3 years to an age string" <|
                \() ->
                    Expect.equal
                        (makeMe3YearsOlder "16")
                        (Ok 19)
            , test "returns an Err if given an invalid age" <|
                \() ->
                    Expect.equal
                        (makeMe3YearsOlder "errhmagerrd")
                        (Err "could not convert string 'errhmagerrd' to an Int")
            ]
        , describe "combinedAge tests"
            [ test "adds two valid ages together" <|
                \() ->
                    Expect.equal
                        (combinedAge "28" "25")
                        (Ok 53)
            , test "returns an Err if either of them are invalid" <|
                \() ->
                    Expect.equal
                        (combinedAge "28" "blergh")
                        (Err "could not convert string 'blergh' to an Int")
            , test "returns an Err if either of them are invalid" <|
                \() ->
                    Expect.equal
                        (combinedAge "blergh" "28")
                        (Err "could not convert string 'blergh' to an Int")
            ]
        ]



-- tuple fuzzer is a special function that generates random lists of (Int, String)s


tupleFuzzer : Fuzzer (List ( Int, String ))
tupleFuzzer =
    list <| tuple ( int, string )



-- The two functions below allow the results of the tests to be printed to the terminal


main : TestProgram
main =
    run emit allTests


port emit : ( String, Value ) -> Cmd msg
