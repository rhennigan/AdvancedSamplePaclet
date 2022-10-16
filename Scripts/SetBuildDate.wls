#!/usr/bin/env wolframscript

$inputFileName  = Replace[ $InputFileName, "" :> NotebookFileName[ ] ];
$pacletDir      = DirectoryName[ $inputFileName, 2 ];
$pacletInfoFile = FileNameJoin @ { $pacletDir, "PacletInfo.wl" };

Export[
    $pacletInfoFile,
    StringReplace[
        ReadString @ $pacletInfoFile,
        "$BuildDate$" -> DateString[ "DateTimeShort" ]
    ],
    "String"
]
