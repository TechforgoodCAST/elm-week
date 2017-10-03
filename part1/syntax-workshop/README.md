# Part 1

## Goals

* Get used to Elm syntax
* Introduction to new Elm datatypes
* Introduction to type signatures

## Elm syntax && datatypes

1. Read through https://guide.elm-lang.org/core_language.html

2. Complete exercises in `Main.elm`, keeping this page open for reference - http://elm-lang.org/docs/syntax

N.B. There are a lot of exercises and it might start to get a little tedious without any context. However these are the building blocks of the language and once you've worked through the exercises you'll have a solid foundation that will allow us to move on to the juicy bits 🍹

## Type signatures

1. Read through https://guide.elm-lang.org/types/ up to the `Type Aliases`

2. Add type signatures to your solutions in `Main.elm`

## Tips

* You will probably have a hard time getting your code to compile at first. This can be frustrating, however if you keep at it the compiler will soon become your best friend

* If you don't understand what a function is meant to do, have a look at the test case for it near the bottom of the file


## Installation

If you haven't already

```bash
npm i -g elm elm-live
```

```bash
elm-package install
```

(Answer `y` when prompted.)


## Building

```bash
elm-live Main.elm --open --pushstate --output=elm.js
```
