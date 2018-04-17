module Facet.Theme.Plot exposing (Plot, default)

import Color
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Theme.Axis as Axis exposing (Axis)
import Facet.Theme.Padding as Padding exposing (Padding)
import Facet.Theme.Margin as Margin exposing (Margin)
import Facet.Theme.Title as Title exposing (Title)


type alias Plot =
    { xAxis : Axis
    , yAxis : Axis
    , facetTitle : Title
    , facetMargin : Margin
    , fill : Fill
    , stroke : Stroke
    , gridMajor : Stroke
    , gridMinor : Stroke
    , width : Float
    , height : Float
    }


default : Plot
default =
    Plot
        Axis.default
        Axis.default
        facetTitle
        facetMargin
        Fill.empty
        plotStroke
        gridMajorStroke
        gridMinorStroke
        500.0
        500.0


facetTitle : Title
facetTitle =
    let
        d =
            Title.default
    in
        { d
            | fill = facetTitleFill
            , stroke = facetTitleStroke
            , margin = Margin 0 0 0 0
            , padding = Padding 2 0 2 0
        }


facetTitleFill : Fill
facetTitleFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.lightGray }


facetTitleStroke : Stroke
facetTitleStroke =
    let
        d =
            Stroke.empty
    in
        { d | stroke = Just Color.lightGray, strokeWidth = Just 1 }


facetMargin : Margin
facetMargin =
    Margin 0 12 12 0


plotStroke : Stroke
plotStroke =
    let
        d =
            Stroke.empty
    in
        { d | stroke = Just Color.lightGray, strokeWidth = Just 1 }


gridMajorStroke : Stroke
gridMajorStroke =
    let
        d =
            Stroke.empty
    in
        { d
            | stroke = Just Color.lightGray
            , strokeWidth = Just 1
            , strokeDash = Just <| Stroke.StrokeDash2 Nothing
        }


gridMinorStroke : Stroke
gridMinorStroke =
    let
        d =
            Stroke.empty
    in
        { d
            | stroke = Just Color.lightGray
            , strokeWidth = Just 0.5
            , strokeDash = Just <| Stroke.StrokeDash5 Nothing
        }
