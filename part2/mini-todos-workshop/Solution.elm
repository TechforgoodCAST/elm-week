module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)


main : Program Never Model Msg
main =
    beginnerProgram
        { model = model
        , view = view
        , update = update
        }


type alias Model =
    { todos : List Todo
    , visibility : Visibility
    }


type Visibility
    = All
    | Active
    | Completed
    | Urgent


type alias Todo =
    { task : String
    , completed : Bool
    , urgent : Bool
    }


visibleTodos : Visibility -> List Todo -> List Todo
visibleTodos visibility todoList =
    case visibility of
        All ->
            todoList

        Active ->
            List.filter (not << .completed) todoList

        Completed ->
            List.filter .completed todoList

        Urgent ->
            List.filter .urgent todoList


model : Model
model =
    { todos = sampleTodos
    , visibility = All
    }


sampleTodos : List Todo
sampleTodos =
    [ { task = "Get food"
      , completed = False
      , urgent = True
      }
    , { task = "Clean room"
      , completed = False
      , urgent = False
      }
    , { task = "Finish CV"
      , completed = False
      , urgent = False
      }
    , { task = "Learn Javascript"
      , completed = True
      , urgent = False
      }
    ]


type Msg
    = SetVisibility Visibility


update : Msg -> Model -> Model
update msg model =
    case msg of
        SetVisibility visibility ->
            { model | visibility = visibility }


view : Model -> Html Msg
view model =
    div []
        [ stylesheetLink
        , renderApp model
        ]


renderApp : Model -> Html Msg
renderApp model =
    div [ class "mw6 sans-serif center" ]
        [ h1 [ class "tc" ] [ text "Todos" ]
        , div [ style [ ( "min-height", "200px" ) ] ] <| List.map renderTodo <| visibleTodos model.visibility model.todos
        , visibilityFilters
        ]


visibilityFilters : Html Msg
visibilityFilters =
    let
        buttonClasses =
            "br2 mr3 bg-blue bn white ph3 pv2 outline-0"
    in
        div []
            [ button [ class buttonClasses, onClick <| SetVisibility All ] [ text "all" ]
            , button [ class buttonClasses, onClick <| SetVisibility Active ] [ text "active" ]
            , button [ class buttonClasses, onClick <| SetVisibility Completed ] [ text "completed" ]
            , button [ class buttonClasses, onClick <| SetVisibility Urgent ] [ text "urgent" ]
            ]


renderTodo : Todo -> Html Msg
renderTodo todo =
    p [] [ text todo.task ]


stylesheetLink : Html msg
stylesheetLink =
    node "link"
        [ rel "stylesheet"
        , href "https://unpkg.com/tachyons@4.8.0/css/tachyons.min.css"
        ]
        []
