module Main exposing (..)

import Html.App exposing (program)
import App exposing (..)


main : Program Never
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
