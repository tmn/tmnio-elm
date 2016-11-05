module Blog.Models exposing (..)


type alias PostId =
    Int


type alias Post =
    { id : PostId
    , title : String
    , content : String
    }
