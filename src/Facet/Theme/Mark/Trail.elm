module Facet.Theme.Mark.Trail exposing (Trail, default)

import Color exposing (black)
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)


type alias Trail =
    { fill : Fill
    , cursor : Cursor
    }


default : Trail
default =
    Trail trailFill CursorDefault


trailFill : Fill
trailFill =
    let
        d =
            Fill.empty
    in
        { d | fill = Just Color.blue }
