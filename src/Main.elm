module Main exposing (..)

import Html.App exposing (program)
import Messages exposing (Msg)
import Models exposing (Model)
import View exposing (view)
import Update exposing (update)


init : ( Model, Cmd Msg )
init =
    ( "tmn.io!", Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
