module Facet.Theme.Title exposing (Title, default)

import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Theme.Label as Label exposing (Label)
import Facet.Theme.Margin as Margin exposing (Margin)
import Facet.Theme.Padding as Padding exposing (Padding)


{-| -}
type alias Title =
    { stroke : Stroke
    , fill : Fill
    , label : Label
    , padding : Padding
    , margin : Margin
    }


{-| -}
default : Title
default =
    Title
        Stroke.empty
        fill
        titleLabel
        titlePadding
        titleMargin


titleLabel : Label
titleLabel =
    Label.default


fill : Fill
fill =
    let
        d =
            Fill.empty
    in
        d


titlePadding : Padding
titlePadding =
    Padding 0 0 0 0


titleMargin : Margin
titleMargin =
    Margin 0 0 0 0
