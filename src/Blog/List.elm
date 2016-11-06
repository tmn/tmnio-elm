module Blog.List exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)
import Blog.Messages exposing (..)
import Blog.Models exposing (Post)


view : List Post -> Html Msg
view posts =
    div []
        [ list posts ]


post post =
    li [ onClick (ShowPost post.id) ]
        [ text post.title
        ]


list : List Post -> Html Msg
list posts =
    let
        children =
            List.map post posts
    in
        ul [] children
