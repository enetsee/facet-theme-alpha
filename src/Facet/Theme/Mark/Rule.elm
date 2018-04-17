module Facet.Theme.Mark.Rule exposing (Rule, default)

import Color
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


type alias Rule =
    { stroke : Stroke
    , cursor : Cursor
    }


default : Rule
default =
    Rule ruleStroke CursorDefault


ruleStroke : Stroke
ruleStroke =
    let
        d =
            Stroke.empty
    in
        { d
            | stroke = Just Color.blue
            , strokeWidth = Just 1.0
        }
