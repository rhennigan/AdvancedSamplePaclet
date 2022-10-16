PacletObject[ <|
    "Name"             -> "Wolfram/AdvancedSamplePaclet",
    "Description"      -> "A sample paclet used to demonstrate multi-platform CI/CD compilation workflows at the 2022 Wolfram Technology Conference",
    "Creator"          -> "Richard Hennigan (Wolfram Research)",
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