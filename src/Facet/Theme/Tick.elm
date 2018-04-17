module Facet.Theme.Tick exposing (Tick, default)

import Color
import Facet.Scenegraph.Stroke as Stroke exposing (Stroke)
import Facet.Theme.Label as Label exposing (Label)


{-| -}
type alias Tick =
    { stroke : Stroke
    , sizeInner : Float
    , sizeMinor : Float
    , sizeOuter : Float
    , padding : Float
    , offset : Float
    , labelOffset : Float
    , label : Label
    , labelAngle : Float
    }


{-| Default `Tick` theme
-}
default : Tick
default =
    Tick tickStroke 6.0 3.0 10.0 3.0 0.0 4.0 tickLabel 0


tickStroke : Stroke
tickStroke =
    let
        empty =
            Stroke.empty
    in
        { empty
            | stroke = Just Color.black
            , strokeWidth = Just 1
        }


tickLabel : Label
tickLabel =
    let
        d =
            Label.default
    in
        d
