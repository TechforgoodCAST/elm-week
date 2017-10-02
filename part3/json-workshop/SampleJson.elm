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
          "key4": "help me I'm burried away!"
        },
        "key5": "save me too!"
      }
    },
    "list_of_numbers": [ 1, 2, 3, 4, 5 ]
  }
"""
