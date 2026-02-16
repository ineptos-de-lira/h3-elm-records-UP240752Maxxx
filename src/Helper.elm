module Helper exposing
    ( Language
    , User
    , languageNames
    , languages
    , onlyStudents
    , users
    )


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languages : List Language
languages =
    [ { name = "Python"
      , releaseYear = 1996
      , currentVersion = "3.15"
      }
    , { name = "java"
      , releaseYear = 1995
      , currentVersion = "2025"
      }
    ]


languageNames : List Language -> List String
languageNames langs =
    List.map .name langs


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Estefania", uType = "Biotecnology" }
    , { name = "Cometa", uType = "Engeener" }
    , { name = "Roberto", uType = "Student" }
    ]


onlyStudents : List User -> List String
onlyStudents us =
    List.filterMap
        (\u ->
            if u.uType == "Student" then
                Just u.name

            else
                Nothing
        )
        us
