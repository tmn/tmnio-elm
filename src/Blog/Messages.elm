module Blog.Messages exposing (..)

import Blog.Models exposing (PostId)


type Msg
    = ShowPosts
    | ShowPost PostId
