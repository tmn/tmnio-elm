module Models exposing (..)

import Blog.Models exposing (Post)
import Routing


type alias Model =
    { blogPosts : List Post
    , route : Routing.Route
    }


initialModel : Routing.Route -> Model
initialModel route =
    { blogPosts =
        [ { id = 1
          , title = "Dolor sit"
          , content = "Lorem ipsum"
          }
        , { id = 2
          , title = "Dolor sit"
          , content = "Lorem ipsum"
          }
        ]
    , route = route
    }
