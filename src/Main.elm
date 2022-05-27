module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1)
import Html.Attributes exposing (style)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view _ =
    div []
        [ h1 [style "font-size" "110px", style "text-decoration" "underline"] [ text "The Migoya Indicator" ]
        , h1 [style "font-size" "110px"] [ text "Bear Market!" ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
