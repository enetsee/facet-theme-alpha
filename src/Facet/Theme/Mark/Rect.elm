module Facet.Theme.Mark.Rect exposing (Rect, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


type alias Rect =
    { cornerRadius : Float
    , fill : Fill
    , stroke : Stroke
    , cursor : Cursor
    }


default : Rect
default =
    Rect 0 fill stroke CursorDefault


fill : Fill
fill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.blue }


stroke : Stroke
stroke =
    Stroke.empty
