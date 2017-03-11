module Main.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (on, onInput, keyCode)
import Main.Types exposing (..)
import Json.Decode as Json


-- VIEW


view : Model -> Html Msg
view { field } =
    div
        [ class "main" ]
        [ title
        , inputField field
        ]



-- COMPONENTS


title : Html Msg
title =
    p
        [ class "point big" ]
        [ text "Elm Project : Go!" ]


inputField : String -> Html Msg
inputField str =
    input
        [ class "field"
        , value str
        , onInput UpdateField
        , spellcheck False
        , placeholder "Check out these Msgs"
        , ifEnter HandleEnter
        ]
        []



-- UTIL


ifEnter : (Bool -> Msg) -> Attribute Msg
ifEnter msg =
    on "keydown" <| Json.map (msg << (==) 13) keyCode
