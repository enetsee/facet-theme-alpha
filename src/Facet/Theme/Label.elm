module Facet.Theme.Label exposing (Label, default)

import Color
import Facet.Scenegraph.Fill as Fill exposing (Fill)
import Facet.Scenegraph.Font as Font exposing (Font)
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)


type alias Label =
    { stroke : Stroke
    , fill : Fill
    , font : Font
    }


default : Label
default =
    Label
        Stroke.empty
        labelFill
        labelFont


labelFont : Font
labelFont =
    let
        d =
            Font.default
    in
        { d | font = "Source Sans Pro" }


labelFill : Fill
labelFill =
    Fill
        (Just Color.black)
        Nothing
