#!/usr/bin/env wolframscript

(* :!CodeAnalysis::BeginBlock:: *)
(* :!CodeAnalysis::Disable::SuspiciousSessionSymbol:: *)

If[ FailureQ @ FindFile[ "Wolfram`PacletCICD`" ],
    PacletInstall[ "https://github.com/WolframResearch/PacletCICD/releases/download/v0.33.1/Wolfram__PacletCICD-0.33.1.paclet" ]
];

Needs[ "Wolfram`PacletCICD`" -> "cicd`" ];

$inputFileName = Replace[ $InputFileName, "" :> NotebookFileName[ ] ];
$pacletDir     = DirectoryName[ $inputFileName, 2 ];
$mxFile        = FileNameJoin @ {
                     $pacletDir,
                     "Kernel",
                     ToString @ $SystemWordLength <> "Bit",
                     "AdvancedSamplePaclet.mx"
                 };


If[ FileExistsQ @ $mxFile,
    Print[ "Removing existing MX file..." ];
    DeleteFile @ $mxFile
];

Print[ "Loading paclet..." ];
PacletDirectoryLoad @ $pacletDir;
Needs[ "Wolfram`AdvancedSamplePaclet`" ];

$mxDir = GeneralUtilities`EnsureDirectory @ DirectoryName @ $mxFile;
Print[ "MX target directory: ", $mxDir  ];
Print[ "Building MX file: "   , $mxFile ];

DumpSave[
    $mxFile,
    {
        "Wolfram`AdvancedSamplePaclet`",
        "Wolfram`AdvancedSamplePaclet`Private`"
    },
    "SymbolAttributes" -> False
];

If[ ! FileExistsQ @ $mxFile,
    cicd`ConsoleError[ "Failed to build MX file!", "Fatal" -> True ],
    $mxFile
]

(* :!CodeAnalysis::EndBlock:: *)