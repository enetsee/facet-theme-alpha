module Facet.Theme.Mark.Symbol exposing (Symbol, default)

import Color exposing (black)
import Facet.Scenegraph.Cursor as Cursor exposing (Cursor(CursorDefault))
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Shape exposing (Shape(Circle))
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


type alias Symbol =
    { shape : Shape
    , size : Float
    , angle : Float
    , fill : Fill
    , stroke : Stroke
    , cursor : Cursor
    }


default : Symbol
default =
    { shape = Circle
    , size = 64
    , angle = 0
    , fill = { fill = Nothing, fillOpacity = Nothing }
    , stroke = defaultStroke
    , cursor = CursorDefault
    }


defaultStroke : Stroke
defaultStroke =
    let
        e =
            Stroke.empty
    in
        { e | stroke = Just (Color.darkGray), strokeWidth = Just 0.5 }
