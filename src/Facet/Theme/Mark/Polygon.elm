module Facet.Theme.Mark.Polygon exposing (Polygon, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


{-| -}
type alias Polygon =
    { fill : Fill
    , stroke : Stroke
    , cursor : Cursor
    }


default : Polygon
default =
    Polygon polygonFill Stroke.empty CursorDefault


polygonFill : Fill
polygonFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.blue }
