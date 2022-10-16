BeginPackage[ "Wolfram`AdvancedSamplePaclet`" ];

AddTwo::usage = "AddTwo[x] adds two to x.";

Begin[ "`Private`" ];

AddTwo[ x_Integer ] := addTwo @ x;
AddTwo[ x_ ] := x + 2;

addTwo := addTwo =
    LibraryFunctionLoad[ $libraryFile, "AddTwo", { Integer }, Integer ];

End[ ];
EndPackage[ ];
