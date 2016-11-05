module Blog.Messages exposing (..)

import Blog.Models exposing (PostId)


type Msg
    = ShowBlogPosts
    | ShowBlogPost PostId
