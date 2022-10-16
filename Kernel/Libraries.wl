BeginPackage[ "Wolfram`AdvancedSamplePaclet`" ];

Begin[ "`Private`" ];

$thisPacletLocation := $thisPacletLocation =
    PacletObject[ "Wolfram/AdvancedSamplePaclet" ][ "Location" ];

$libraryFile := $libraryFile = FileNameJoin @ {
    $thisPacletLocation,
    "LibraryResources",
    $SystemID,
    "SampleLibrary." <> Internal`DynamicLibraryExtension[ ]
};

End[ ];
EndPackage[ ];
