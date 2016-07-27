module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


initialModel : List { url : String }
initialModel =
    [ { url = "1.jpeg" }
    , { url = "2.jpeg" }
    , { url = "3.jpeg" }
    ]


view : List { url : String } -> Html b
view model =
    div [ class "content" ]
        [ h1 [] [ text "Photo Groove" ]
        , div [ id "thumbnails" ]
            (List.map viewThumbnail model)
        ]


viewThumbnail thumbnail =
    img [ src <| urlPrefix ++ thumbnail.url ] []


main : Html a
main =
    view initialModel


urlPrefix : String
urlPrefix =
    "http://elm-in-action.com/"
