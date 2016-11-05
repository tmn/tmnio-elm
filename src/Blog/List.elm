module Blog.List exposing (..)

import Html exposing (..)
import Blog.Messages exposing (..)
import Blog.Models exposing (Post)


view : List Post -> Html Msg
view posts =
    div []
        [ list posts ]


post post =
    li []
        [ text post.title ]


list : List Post -> Html Msg
list posts =
    let
        children =
            List.map post posts
    in
        ul [] children
