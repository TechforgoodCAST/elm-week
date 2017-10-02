module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main =
    div []
        [ stylesheetLink
          -- add your components here
        ]


stylesheetLink : Html msg
stylesheetLink =
    -- this appends the tachyons stylesheet to the DOM
    node "link"
        [ rel "stylesheet"
        , href "https://unpkg.com/tachyons@4.8.0/css/tachyons.min.css"
        ]
        []
