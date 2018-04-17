module Facet.Theme.Padding exposing (Padding, default)


type alias Padding =
    { top : Float
    , right : Float
    , bottom : Float
    , left : Float
    }


default : Padding
default =
    Padding 4.0 4.0 4.0 4.0
