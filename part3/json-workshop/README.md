# JSON Workshop

This workshop will help you get to grips with writing JSON decoders rather than the full HTTP request response cycle

JSON in elm may seem like a weird an unnecessarily complex task at first but it can have some really positive effects on the reliability of your app!


## Decoders

+ A string of JSON must be decoded (turned into `Elm` values) before it can be used in your elm app
+ We write special functions called `Decoders` to do this
+ These are a bit like a template of what Elm expects the JSON structure to be like

## Why?

+ JSON has a habit of exploding (try calling `JSON.parse` on an invalid JSON string in JavaScript)
+ Having a schema for your JSON means you always get back the values you expect (so the rest of your app can use them)
+ Errors are gracefully handled using the `Result` type (the result of parsing a string can be either `OK YourData` or `Err reason`)
