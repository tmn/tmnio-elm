module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Blog.Update


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        BlogMsg subMsg ->
            let
                ( updatedPosts, cmd ) =
                    Blog.Update.update subMsg model.blogPosts
            in
                ( { model | blogPosts = updatedPosts }, Cmd.map BlogMsg cmd )
