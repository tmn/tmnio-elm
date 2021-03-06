module Routing exposing (..)

import String
import Navigation
import UrlParser exposing (..)
import Blog.Models exposing (PostId)


type Route
    = BlogRoute
    | BlogPostRoute PostId
    | NotFoundRoute


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ format BlogRoute (s "")
        , format BlogPostRoute (s "post" </> int)
        , format BlogRoute (s "posts")
        ]


hashParser : Navigation.Location -> Result String Route
hashParser location =
    location.hash
        |> String.dropLeft 1
        |> parse identity matchers


parser : Navigation.Parser (Result String Route)
parser =
    Navigation.makeParser hashParser


routeFromResult : Result String Route -> Route
routeFromResult result =
    case result of
        Ok route ->
            route

        Err string ->
            NotFoundRoute
