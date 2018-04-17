module Facet.Theme.Mark.Line exposing (Line, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


type alias Line =
    { stroke : Stroke
    , cursor : Cursor
    }


default : Line
default =
    Line lineStroke CursorDefault


lineStroke : Stroke
lineStroke =
    let
        d =
            Stroke.empty
    in
        { d
            | stroke = Just Color.blue
            , strokeWidth = Just 1.0
        }
