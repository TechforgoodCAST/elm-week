# Http code-along

## Objectives

* Become familiar with the step by step process required to make a Http request in Elm
* Understand how Elm handles failures in the outside world
* Start practicing how to decode incoming Json into Elm datatypes

## Steps

1. Read through https://guide.elm-lang.org/architecture/effects/, up to the Random section.
2. Go to https://github.com/settings/tokens and generate yourself a new token. Put it in a safe place!
3. Get ready for some code-along fun!

## Tips

* Be careful with Elm package versions. It is always safer to go to http://package.elm-lang.org/ and search on there rather than on google. Searching for them on google often takes you to an outdated version.

## Words of wisdom (from Elm docs)

*Elm has managed effects, meaning that things like HTTP requests or writing to disk are all treated as data in Elm. When this data is given to the Elm runtime system, it can do some “query optimization” before actually performing the effect. Perhaps unexpectedly, this managed effects idea is the heart of why Elm is so nice for testing, reuse, reproducibility, etc. There are two kinds of managed effects you will use in your programs: commands and subscriptions.*

*A command is a way of telling Elm, “Hey, I want you to do this thing!” So if you want to send an HTTP request, you would need to command Elm to do it. Or if you wanted to ask for geolocation, you would need to command Elm to go get it.
Every Cmd specifies (1) which effects you need access to and (2) the type of messages that will come back into your application.*

N.B. Do not worry if you don't understand this fully, it will become after you have used commands within an application. It is good to come back to these definitions as you gain more confidence in the language.


## Resources

* https://guide.elm-lang.org/architecture/effects/http.html

## Building

```bash
elm-live Main.elm --open --pushstate --output=elm.js
```
