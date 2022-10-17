#!/usr/bin/env wolframscript

(* :!CodeAnalysis::BeginBlock:: *)
(* :!CodeAnalysis::Disable::SuspiciousSessionSymbol:: *)

If[ FailureQ @ FindFile[ "Wolfram`PacletCICD`" ],
    PacletInstall[ "Wolfram/PacletCICD" ]
];

EchoEvaluation @ FileNames[ "*.wlt", Directory[ ], Infinity ];

Needs[ "Wolfram`PacletCICD`" -> "cicd`" ];

$inputFileName = Replace[ $InputFileName, "" :> NotebookFileName[ ] ];
$pacDir        = DirectoryName[ $inputFileName, 2 ];
$buildDir      = FileNameJoin @ { $pacDir, "build", "Wolfram__AdvancedSamplePaclet" };

cicd`TestPaclet @ File @ $buildDir

(* :!CodeAnalysis::EndBlock:: *)