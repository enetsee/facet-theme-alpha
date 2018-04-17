module Facet.Theme
    exposing
        ( Theme
        , default
        , Axis
        , Label
        , Legend
        , Margin
        , Mark
        , Arc
        , Area
        , Line
        , Path
        , Polygon
        , Rect
        , Rule
        , Symbol
        , Text
        , Trail
        , Padding
        , Plot
        , Tick
        , Title
        )

{-|
@docs Theme, default

@docs Axis

@docs Label

@docs Legend

@docs Margin

@docs Mark ,Arc, Area , Line ,Path,Polygon, Rect , Rule , Symbol ,Text, Trail

@docs Padding

@docs Plot

@docs Tick

@docs Title
-}

import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Theme.Axis as Axis
import Facet.Theme.Label as Label
import Facet.Theme.Legend as Legend
import Facet.Theme.Margin as Margin
import Facet.Theme.Mark as Mark
import Facet.Theme.Mark.Arc as Arc
import Facet.Theme.Mark.Area as Area
import Facet.Theme.Mark.Line as Line
import Facet.Theme.Mark.Path as Path
import Facet.Theme.Mark.Polygon as Polygon
import Facet.Theme.Mark.Rect as Rect
import Facet.Theme.Mark.Rule as Rule
import Facet.Theme.Mark.Symbol as Symbol
import Facet.Theme.Mark.Text as Text
import Facet.Theme.Mark.Trail as Trail
import Facet.Theme.Padding as Padding
import Facet.Theme.Plot as Plot
import Facet.Theme.Tick as Tick
import Facet.Theme.Title as Title


{-| A set of styles to be applied when rendering a `Plot`.
    A `Theme` controls the appearance of _non-data_ components of the plot.
-}
type alias Theme =
    { margin : Margin
    , fill : Fill
    , title : Title
    , plot : Plot
    , mark : Mark
    , legend : Legend
    , legendGroupMargin : Margin
    }



-- re-export types -------------------------------------------------------------


{-|
-}
type alias Axis =
    Axis.Axis


{-| -}
type alias Label =
    Label.Label


{-| -}
type alias Legend =
    Legend.Legend


{-| -}
type alias Margin =
    Margin.Margin


{-| -}
type alias Mark =
    Mark.Mark


{-| -}
type alias Arc =
    Arc.Arc


{-| -}
type alias Area =
    Area.Area


{-| -}
type alias Line =
    Line.Line


{-| -}
type alias Path =
    Path.Path


{-| -}
type alias Polygon =
    Polygon.Polygon


{-| -}
type alias Rect =
    Rect.Rect


{-| -}
type alias Rule =
    Rule.Rule


{-| -}
type alias Symbol =
    Symbol.Symbol


{-| -}
type alias Text =
    Text.Text


{-| -}
type alias Trail =
    Trail.Trail


{-| -}
type alias Padding =
    Padding.Padding


{-| -}
type alias Plot =
    Plot.Plot


{-| -}
type alias Tick =
    Tick.Tick


{-| -}
type alias Title =
    Title.Title



-- default theme ---------------------------------------------------------------


{-| Default `Theme`
-}
default : Theme
default =
    Theme
        margin
        fill
        title
        Plot.default
        Mark.default
        Legend.default
        legendGroupMargin


title : Title
title =
    let
        d =
            Title.default

        lbl =
            d.label

        font =
            lbl.font

        newFont =
            { font | fontSize = font.fontSize + 2 }

        newLbl =
            { lbl | font = newFont }
    in
        { d | label = newLbl, margin = Margin.Margin 0 0 8 0 }


margin : Margin
margin =
    Margin.Margin 8 8 8 8


legendGroupMargin : Margin
legendGroupMargin =
    Margin.Margin 0 0 0 20


fill : Fill
fill =
    Fill.empty
