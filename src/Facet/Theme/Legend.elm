module Facet.Theme.Legend exposing (Legend, default)

import Color
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Font exposing (FontStyle(StyleItalic))
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)
import Facet.Theme.Margin as Margin exposing (Margin)
import Facet.Theme.Padding as Padding exposing (Padding)
import Facet.Theme.Label as Label exposing (Label)


type alias Legend =
    { padding : Padding
    , margin : Margin
    , itemLabel : Label
    , itemPadding : Padding
    , itemHeight : Float
    , title : Label
    , stroke : Stroke
    , fill : Fill
    }


default : Legend
default =
    Legend
        legendPadding
        legendMargin
        itemLabel
        itemPadding
        20
        Label.default
        legendStroke
        legendFill


legendPadding : Padding
legendPadding =
    Padding 4 2 2 4


itemPadding : Padding
itemPadding =
    Padding 4 6 4 0


legendMargin : Margin
legendMargin =
    Margin 0 4 4 0


legendFill : Fill
legendFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.white }


legendStroke : Stroke
legendStroke =
    let
        d =
            Stroke.empty
    in
        { d | stroke = Just Color.gray, strokeWidth = Just 0.5 }


itemLabel : Label
itemLabel =
    let
        d =
            Label.default

        f =
            d.font

        newF =
            { f | fontStyle = StyleItalic }
    in
        { d | font = newF }
