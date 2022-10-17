PacletObject[ <|
    "Name"             -> "Wolfram/AdvancedSamplePaclet",
    "Description"      -> "A sample paclet used to demonstrate more complex CI/CD workflows at the 2022 Wolfram Technology Conference",
    "Creator"          -> "Richard Hennigan (Wolfram Research)",
    "ActionURL"        -> "$ActionURL$",
    "BuildDate"        -> "$BuildDate$",
    "Version"          -> "1.0.0",
    "WolframVersion"   -> "13.0+",
    "License"          -> "MIT",
    "PublisherID"      -> "Wolfram",
    "SourceControlURL" -> "https://github.com/rhennigan/AdvancedSamplePaclet",
    "Extensions"       -> {
        {
            "Kernel",
            "Root"    -> "Kernel",
            "Context" -> { "Wolfram`AdvancedSamplePaclet`" },
            "Symbols" -> {
                "Wolfram`AdvancedSamplePaclet`AddOne",
                "Wolfram`AdvancedSamplePaclet`AddTwo"
            }
        },
        {
            "Documentation",
            "Root"     -> "Documentation",
            "Language" -> "English"
        },
        {
            "LibraryLink",
            "Root" -> "LibraryResources"
        },
        {
            "Asset",
            "Assets" -> { { "License", "./LICENSE" } }
        }
    }
|> ]