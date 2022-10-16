BeginPackage[ "Wolfram`AdvancedSamplePaclet`" ];

AddOne::usage = "AddOne[x] adds one to x.";

Begin[ "`Private`" ];

AddOne[ x_Integer ] := addOne @ x;
AddOne[ x_ ] := x + 1;

addOne := addOne =
    LibraryFunctionLoad[ $libraryFile, "AddOne", { Integer }, Integer ];

End[ ];
EndPackage[ ];
