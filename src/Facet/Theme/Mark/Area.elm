module Facet.Theme.Mark.Area exposing (Area, default)

import Color exposing (black)
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


{-| -}
type alias Area =
    { fill : Fill
    , stroke : Stroke
    , cursor : Cursor
    }


default : Area
default =
    Area areaFill Stroke.empty CursorDefault


areaFill : Fill
areaFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.blue }
