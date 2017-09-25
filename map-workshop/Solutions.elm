module Solutions exposing (..)

-- Dont look at these until you've finished or you're stuck!
{--LISTS --}
-- double the items in the list


double : List number -> List number
double list =
    list |> List.map (\x -> x * 2)



-- return a list with only the first elements of each tuple


tuples : List ( number, String ) -> List number
tuples list =
    list |> List.map (\( a, b ) -> a)



-- return a list of booleans where each item is if the value in the list is less than 3


bools : List number -> List Bool
bools list =
    list |> List.map (\x -> x < 3)



{--MAYBES --}
-- get the head of the list (remember the list could be empty so should return nothing in this case)


headOfTheList : List a -> Maybe a
headOfTheList list =
    list |> List.head



-- concat a string to the value inside a maybe


concatMeMaybe : String -> Maybe String -> Maybe String
concatMeMaybe str maybeString =
    maybeString |> Maybe.map (\x -> x ++ str)



-- get the number out of the maybe but if it's not there return zero instead


numberOrZero : Maybe number -> number
numberOrZero maybeNumber =
    maybeNumber |> Maybe.withDefault 0



-- add the values of the two maybes together but return nothing if either of them are not there (hint have a look at Maybe.map2)


addMaybes : Maybe number -> Maybe number -> Maybe number
addMaybes maybe1 maybe2 =
    Maybe.map2 (\n1 n2 -> n1 + n2) maybe1 maybe2



{--RESULTS --}
{--attempt to parse a string into an Int
   remember you could pass the function something like "errhmagerrd" which is not an age
   in that case it would return `Err "could not convert string 'errhmagerrd' to an Int"`
   but if you gave the function 25 it would return `Ok 25`
   Hint, have a look in the String module of the core elm library (it's a one liner)
--}


getMyAge : String -> Result String Int
getMyAge ageString =
    String.toInt ageString



-- parse an age from a string and add 3 to it


makeMe3YearsOlder : String -> Result String Int
makeMe3YearsOlder ageString =
    ageString
        |> String.toInt
        |> Result.map (\age -> age + 3)



-- parse two ages from strings and add the results together (hint have a look at Result.map2)


combinedAge : String -> String -> Result String Int
combinedAge ageString1 ageString2 =
    Result.map2
        (\age1 age2 -> age1 + age2)
        (String.toInt ageString1)
        (String.toInt ageString2)
