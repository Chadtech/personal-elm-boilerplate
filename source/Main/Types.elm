module Main.Types exposing (..)


type Msg
    = UpdateField String
    | HandleEnter Bool
    | HandlePort String


type alias Model =
    { field : String }
