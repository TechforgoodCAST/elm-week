module MapExercises exposing (..)

-- NB: Each function has a default value so the program compiles
-- Fill these in with your new implementation to make the tests pass
{--LISTS --}
-- double the items in the list


double : List number -> List number
double list =
    []



-- return a list with only the first elements of each tuple


tuples : List ( number, String ) -> List number
tuples list =
    []



-- return a list of booleans where each item is if the value in the list is less than 3


bools : List number -> List Bool
bools list =
    []



{--MAYBES --}
-- get the head of the list (remember the list could be empty so should return nothing in this case)


headOfTheList : List a -> Maybe a
headOfTheList list =
    Nothing



-- concat a string to the value inside a maybe


concatMeMaybe : String -> Maybe String -> Maybe String
concatMeMaybe str maybeString =
    Just ""



-- get the number out of the maybe but if it's not there return zero instead


numberOrZero : Maybe number -> number
numberOrZero maybeNumber =
    12



-- add the values of the two maybes together but return nothing if either of them are not there (hint have a look at Maybe.map2)


addMaybes : Maybe number -> Maybe number -> Maybe number
addMaybes maybe1 maybe2 =
    Nothing



{--RESULTS --}
{--attempt to parse a string into an Int
   remember you could pass the function something like "errhmagerrd" which is not an age
   in that case it would return `Err "could not convert string 'errhmagerrd' to an Int"`
   but if you gave the function 25 it would return `Ok 25`
   Hint, have a look in the String module of the core elm library (it's a one liner)
--}


getMyAge : String -> Result String Int
getMyAge ageString =
    Ok 1



-- parse an age from a string and add 3 to it


makeMe3YearsOlder : String -> Result String Int
makeMe3YearsOlder ageString =
    Err ""



-- parse two ages from strings and add the results together (hint have a look at Result.map2)


combinedAge : String -> String -> Result String Int
combinedAge ageString1 ageString2 =
    Ok 3
