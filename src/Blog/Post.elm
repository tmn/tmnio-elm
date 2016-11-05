module Blog.Post exposing (..)

import Html exposing (Html, h1, div, text)
import Blog.Messages exposing (Msg)
import Blog.Models exposing (Post)


view : Post -> Html.Html Msg
view post =
    div []
        [ h1 []
            [ text post.title
            ]
        , text post.content
        ]
