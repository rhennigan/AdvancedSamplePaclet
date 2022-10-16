BeginPackage[ "Wolfram`AdvancedSamplePaclet`" ];

AddTwo::usage = "AddTwo[x] adds two to x.";

Begin[ "`Private`" ];

AddTwo[ x_Integer ] := addTwo @ x;

addTwo := addTwo =
    LibraryFunctionLoad[ $libraryFile, "AddTwo", { Integer }, Integer ];

End[ ];
EndPackage[ ];
