module View exposing (..)

import Html exposing (Html, div, text)
import Html.Attributes exposing (id, class)
import Messages exposing (Msg)
import Models exposing (Model)


sidebar : Html msg
sidebar =
    div [ id "sidebar" ]
        [ text "this is sidebars!!"
        ]


view : Model -> Html Msg
view model =
    div [ class "container" ]
        [ div [ id "mainView" ]
            [ text model ]
        , sidebar
        ]
