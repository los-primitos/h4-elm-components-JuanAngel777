module Helper exposing (..)

import Html
import Html.Attributes



-- 1


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2



-- 2


isUpperChars : List Char -> List Bool
isUpperChars list =
    List.map (\c -> Char.isUpper c) list



-- 3


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars list funTrans =
    List.map funTrans list



-- 4️


headers : String -> Html.Html msg
headers param =
    Html.div []
        [ Html.h1 [] [ Html.text param ]
        , Html.h2 [] [ Html.text param ]
        , Html.h3 [] [ Html.text param ]
        , Html.h4 [] [ Html.text param ]
        , Html.h5 [] [ Html.text param ]
        , Html.h6 [] [ Html.text param ]
        ]



-- 5️


hyperlink : String -> String -> Html.Html msg
hyperlink url linkText =
    Html.a
        [ Html.Attributes.href url ]
        [ Html.text linkText ]

