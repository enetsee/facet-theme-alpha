module Facet.Theme.Margin exposing (Margin, default)


type alias Margin =
    { top : Float
    , right : Float
    , bottom : Float
    , left : Float
    }


default : Margin
default =
    Margin 40.0 40.0 40.0 40.0
