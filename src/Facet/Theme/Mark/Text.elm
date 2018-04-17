module Facet.Theme.Mark.Text exposing (Text, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Font as Font exposing (Font)
import Facet.Scenegraph.Mark as Mark exposing (Align, Baseline, Direction)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


{-| -}
type alias Text =
    { fill : Fill
    , stroke : Stroke
    , angle : Float
    , align : Align
    , baseline : Baseline
    , direction : Direction
    , elipsis : Maybe String
    , font : Font
    , cursor : Cursor
    }


default : Text
default =
    Text
        textFill
        textStroke
        0
        Mark.Center
        Mark.Middle
        Mark.LeftToRight
        Nothing
        textFont
        CursorDefault


textFont : Font
textFont =
    let
        d =
            Font.default
    in
        { d | font = "Source Sans Pro" }


textFill : Fill
textFill =
    Fill
        (Just Color.black)
        Nothing


textStroke : Stroke
textStroke =
    Stroke.empty
