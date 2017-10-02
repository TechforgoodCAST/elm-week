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


### Reference Docs and guides:  

Elm Lang Guide section - https://guide.elm-lang.org/interop/json.html
JSON Decode docs - http://package.elm-lang.org/packages/elm-lang/core/5.1.1/Json-Decode
Elm Decode Pipeline docs - http://package.elm-lang.org/packages/NoRedInk/elm-decode-pipeline/latest

## Exercises

There are 3 strings of raw JSON for you to decode into elm values (in `SampleJson.elm`), and three files set up for you (`Todo.elm`, `DeeplyNested.elm`, `Guardian.elm`)    
For now all you need to do is render the result of the decoder to the screen

### 1. Decode Todos JSON

Turn the string of todos JSON into a list of todos `List Todo`

```json
{
  "data": {
    "todos": [
      { "task": "Clean room", "urgent": false, "completed": false },
      { "task": "Get food", "urgent": true, "completed": false },
      { "task": "Learn JavaScript", "urgent": false, "completed": true },
      { "task": "Finish CV", "urgent": false, "completed": false }
    ]
  }
}
```


### 2. Decode Deeply Nested JSON

This is a slightly contrived example; put each of the nested keys into the `RescuedData` record type

```json
{
  "key1": {
    "key2": {
      "key3": {
        "key4": "help me I'm buried away!"
      },
      "key5": "save me too!"
    }
  },
  "random_list_of_numbers": [ 120, 23, 45, 96, 5 ]
}
```

### 3. Decode Guardian API response

Extract the useful data from the sample guardian api response string into a list of articles `List Article`

```json
{
  "response": {
    "status": "ok",
    "total": 13724,
    "startIndex": 1,
    "pageSize": 10,
    "currentPage": 1,
    "pages": 1373,
    "orderBy": "relevance",
    "results": [
        {
          "id": "lifeandstyle/2017/aug/08/share-your-underwhelming-pictures-of-cats",
          "type": "article",
          "sectionId": "lifeandstyle",
          "sectionName": "Life and style",
          "webPublicationDate": "2017-08-08T11:09:15Z",
          "webTitle": "Share your underwhelming pictures of cats",
          "webUrl": "https://www.theguardian.com/lifeandstyle/2017/aug/08/share-your-underwhelming-pictures-of-cats",
          "apiUrl": "https://content.guardianapis.com/lifeandstyle/2017/aug/08/share-your-underwhelming-pictures-of-cats",
          "isHosted": false
        },
        {
          "id": "lifeandstyle/2017/may/05/experience-my-dog-rescues-cats",
          "type": "article",
          "sectionId": "lifeandstyle",
          "sectionName": "Life and style",
          "webPublicationDate": "2017-05-05T13:00:34Z",
          "webTitle": "Experience: my dog rescues cats",
          "webUrl": "https://www.theguardian.com/lifeandstyle/2017/may/05/experience-my-dog-rescues-cats",
          "apiUrl": "https://content.guardianapis.com/lifeandstyle/2017/may/05/experience-my-dog-rescues-cats",
          "isHosted": false
        }
    ]
  }
}
```


## Tips

+ Think of your decoders as bits of lego that you can plug together (start small and build them into bigger pieces)
+ Always start with your core data structure (e.g. your `Article` or `Todo`)
+ The order of the keys that you decode is the same order that they are defined in your record type (the `Article` constructor is just a function that takes 3 strings and returns an `Article`)
+ Your Elm Data doesn't have to have the same nesting as the JSON! Even though the data may be deeply nested in the JSON, your decoders will most likely flatten it into a more useful structure
