# Html Exercise

Try recreating some of your components from the tachyons workshop in elm

https://github.com/TechforgoodCAST/prototyping-workshop/tree/master/tachyons-workshop

### Getting Started

1. cd into this directory
2. run `elm-reactor` in the terminal - this will let you preview an elm app straight away
3. visit `localhost:8000`
4. Click on `Main.elm` - this will run the program in `Main.elm` (all output comes from the `main` function in `Main.elm`)
5. add your components to the `main` function to see them on the page


An example to get you started:

This:
```html
<button class="bg-blue white br2">Click Me</button>
```

Can be written in Elm as:
```elm
myButton =
    button [ class "bg-blue white br2" ] [ text "Click Me" ]
```

Just remember:
+ `button` is a function that takes two `List`s
+ The first is a list of `Attribute`s (like `class` or `style`)
+ The second a list of child nodes (i.e. other html elements)


### Resources

+ Html and the Virtual DOM - https://frontendmasters.com/courses/elm/html-and-the-virtual-dom
+ Elm Html Docs - http://package.elm-lang.org/packages/elm-lang/html/2.0.0/Html
+ Html Attributes - http://package.elm-lang.org/packages/elm-lang/html/2.0.0/Html-Attributes


### Tachyons Stylesheet

The tachyons stylesheet is included in `Main.elm`, at the moment it's not possible to include external scripts and stylsheets in `elm-reactor` so elm appends this to the DOM

This:
```elm
stylesheetLink : Html msg
stylesheetLink =
    node "link"
        [ rel "stylesheet"
        , href "https://unpkg.com/tachyons@4.8.0/css/tachyons.min.css"
        ]
        []
```

Becomes this:
```html
<link rel="stylesheet" href="https://unpkg.com/tachyons@4.8.0/css/tachyons.min.css"/>
```
