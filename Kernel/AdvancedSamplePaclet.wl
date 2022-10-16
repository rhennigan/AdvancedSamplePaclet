BeginPackage[ "Wolfram`AdvancedSamplePaclet`" ];
EndPackage[ ];

Begin[ "Wolfram`AdvancedSamplePacletLoader`" ];

$MXFile = FileNameJoin @ {
    DirectoryName @ $InputFileName,
    ToString @ $SystemWordLength <> "Bit",
    "AdvancedSamplePaclet.mx"
};

Quiet[
    If[ FileExistsQ @ $MXFile
        ,
        Get @ $MXFile
        ,
        Get[ "Wolfram`AdvancedSamplePaclet`Libraries`" ];
        Get[ "Wolfram`AdvancedSamplePaclet`AddOne`"    ];
        Get[ "Wolfram`AdvancedSamplePaclet`AddTwo`"    ];
    ],
    General::shdw
];

End[ ];