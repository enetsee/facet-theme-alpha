module Facet.Theme.Mark.Arc exposing (Arc, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


{-| -}
type alias Arc =
    { fill : Fill
    , stroke : Stroke
    , cursor : Cursor
    , cornerRadius : Float
    }


default : Arc
default =
    Arc arcFill Stroke.empty CursorDefault 0


arcFill : Fill
arcFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.blue }
