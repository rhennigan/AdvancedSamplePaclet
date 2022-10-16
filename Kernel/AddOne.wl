BeginPackage[ "Wolfram`AdvancedSamplePaclet`" ];

AddOne::usage = "AddOne[x] adds one to x.";

Begin[ "`Private`" ];

AddOne[ x_Integer ] := addOne @ x;

addOne := addOne =
    LibraryFunctionLoad[ $libraryFile, "AddOne", { Integer }, Integer ];

End[ ];
EndPackage[ ];
