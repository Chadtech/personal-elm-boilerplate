module Main.View exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import Types.Model exposing (Model)
import Types.Message exposing (Message(..))


-- VIEW


view : Model -> Html Message
view { field } =
    div
        [ class "main" ]
        [ title
        , inputField field
        ]



-- COMPONENTS


title : Html Message
title =
    p
        [ class "point big" ]
        [ text "Elm Project : Go!" ]


inputField : String -> Html Message
inputField str =
    input
        [ class "field"
        , value str
        , onInput UpdateField
        , spellcheck False
        , placeholder "Check out these Msgs"
        ]
        []

