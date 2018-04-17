module Facet.Theme.Mark
    exposing
        ( Mark
        , default
        )

import Facet.Theme.Mark.Arc as Arc exposing (Arc)
import Facet.Theme.Mark.Area as Area exposing (Area)
import Facet.Theme.Mark.Line as Line exposing (Line)
import Facet.Theme.Mark.Path as Path exposing (Path)
import Facet.Theme.Mark.Polygon as Polygon exposing (Polygon)
import Facet.Theme.Mark.Rect as Rect exposing (Rect)
import Facet.Theme.Mark.Rule as Rule exposing (Rule)
import Facet.Theme.Mark.Symbol as Symbol exposing (Symbol)
import Facet.Theme.Mark.Text as Text exposing (Text)
import Facet.Theme.Mark.Trail as Trail exposing (Trail)


type alias Mark =
    { arc : Arc
    , area : Area
    , line : Line
    , path : Path
    , polygon : Polygon
    , rect : Rect
    , rule : Rule
    , symbol : Symbol
    , text : Text
    , trail : Trail
    }


default : Mark
default =
    Mark
        Arc.default
        Area.default
        Line.default
        Path.default
        Polygon.default
        Rect.default
        Rule.default
        Symbol.default
        Text.default
        Trail.default
