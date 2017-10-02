module SampleJson exposing (..)


todosString : String
todosString =
    """
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
"""


deeplyNestedString : String
deeplyNestedString =
    """
  {
    "key1": {
      "key2": {
        "key3": {
          "key4": "help me I'm buried away!"
        },
        "key5": "save me too!"
      }
    },
    "list_of_numbers": [ 120, 23, 45, 96, 5 ]
  }
"""


guardianApiString : String
guardianApiString =
    """
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
          },
          {
            "id": "environment/commentisfree/2017/jul/11/cats-dogs-caterpillars-pets-butterflies",
            "type": "article",
            "sectionId": "environment",
            "sectionName": "Environment",
            "webPublicationDate": "2017-07-11T07:00:03Z",
            "webTitle": "Forget cats and dogs â€“ caterpillars make the best pets | Patrick Barkham",
            "webUrl": "https://www.theguardian.com/environment/commentisfree/2017/jul/11/cats-dogs-caterpillars-pets-butterflies",
            "apiUrl": "https://content.guardianapis.com/environment/commentisfree/2017/jul/11/cats-dogs-caterpillars-pets-butterflies",
            "isHosted": false
          },
          {
            "id": "film/2017/jun/29/kedi-review-street-cats-of-istanbul-documentary-ceyda-torun",
            "type": "article",
            "sectionId": "film",
            "sectionName": "Film",
            "webPublicationDate": "2017-06-29T11:00:21Z",
            "webTitle": "Kedi review â€“ slinking around with the street cats of Istanbul",
            "webUrl": "https://www.theguardian.com/film/2017/jun/29/kedi-review-street-cats-of-istanbul-documentary-ceyda-torun",
            "apiUrl": "https://content.guardianapis.com/film/2017/jun/29/kedi-review-street-cats-of-istanbul-documentary-ceyda-torun",
            "isHosted": false
          },
          {
            "id": "artanddesign/2017/sep/25/turner-prize-2017-exhibition-review-a-snake-infested-garden-and-fat-cats-on-horseback",
            "type": "article",
            "sectionId": "artanddesign",
            "sectionName": "Art and design",
            "webPublicationDate": "2017-09-25T17:22:56Z",
            "webTitle": "Turner prize 2017 exhibition review: a snake-infested garden and fat cats on horseback",
            "webUrl": "https://www.theguardian.com/artanddesign/2017/sep/25/turner-prize-2017-exhibition-review-a-snake-infested-garden-and-fat-cats-on-horseback",
            "apiUrl": "https://content.guardianapis.com/artanddesign/2017/sep/25/turner-prize-2017-exhibition-review-a-snake-infested-garden-and-fat-cats-on-horseback",
            "isHosted": false
          },
          {
            "id": "music/2017/may/29/english-national-opera-the-day-after-review-jonathan-dove",
            "type": "article",
            "sectionId": "music",
            "sectionName": "Music",
            "webPublicationDate": "2017-05-29T13:09:38Z",
            "webTitle": "The Day After review â€“ devastation, dead cats and godlike grandeur",
            "webUrl": "https://www.theguardian.com/music/2017/may/29/english-national-opera-the-day-after-review-jonathan-dove",
            "apiUrl": "https://content.guardianapis.com/music/2017/may/29/english-national-opera-the-day-after-review-jonathan-dove",
            "isHosted": false
          }
      ]
    }
  }
"""
