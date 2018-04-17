module Facet.Theme.Axis exposing (Axis, default)

import Color
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)
import Facet.Theme.Tick as Tick exposing (Tick)
import Facet.Theme.Title as Title exposing (Title)
import Facet.Theme.Margin exposing (Margin)


type alias Axis =
    { tick : Tick
    , stroke : Stroke
    , offset : Float
    , title : Title
    , titleOffset : Float
    }


default : Axis
default =
    Axis
        Tick.default
        axisStroke
        4.0
        axisTitle
        4.0


axisStroke : Stroke
axisStroke =
    let
        empty =
            Stroke.empty
    in
        { empty | stroke = Just Color.black, strokeWidth = Just 1.0 }


axisTitle : Title
axisTitle =
    let
        d =
            Title.default
    in
        { d | margin = Margin 4 4 4 4 }
