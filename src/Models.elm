module Models exposing (..)

import Blog.Models exposing (Post)
import Routing


type alias Model =
    { blogPosts : List Post
    , route : Routing.Route
    }

