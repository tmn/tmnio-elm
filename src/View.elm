module View exposing (..)

import Html exposing (Html, div, text)
import Html.App exposing (map)
import Html.Attributes exposing (id, class)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Blog.Post
import Blog.List
import Blog.Models exposing (PostId)
import Routing exposing (Route(..))


view : Model -> Html Msg
view model =
    div []
        [ defaultPage model ]


page : Model -> Html Msg
page model =
    case model.route of
        BlogRoute ->
            Html.App.map BlogPostMsg (Blog.List.view model.blogPosts)

        BlogPostRoute id ->
            blogPost model id

        NotFoundRoute ->
            notFoundView


sidebar : Html msg
sidebar =
    div [ id "sidebar" ]
        [ text "this is sidebars!!"
        ]


defaultPage : Model -> Html Msg
defaultPage model =
    div [ class "container" ]
        [ div [ id "mainView" ]
            [ page model
            ]
        , sidebar
        ]


blogPost : Model -> PostId -> Html Msg
blogPost model postId =
    let
        maybeBlogPost =
            model.blogPosts
                |> List.filter (\bp -> bp.id == postId)
                |> List.head
    in
        case maybeBlogPost of
            Just post ->
                Html.App.map BlogPostMsg (Blog.Post.view post)

            Nothing ->
                notFoundView


notFoundView : Html msg
notFoundView =
    div []
        [ text "Not Found"
        ]
