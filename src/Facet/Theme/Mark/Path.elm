module Facet.Theme.Mark.Path exposing (Path, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


{-| -}
type alias Path =
    { fill : Fill
    , stroke : Stroke
    , cursor : Cursor
    }


default : Path
default =
    Path pathFill Stroke.empty CursorDefault


pathFill : Fill
pathFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.blue }
