VerificationTest[
    Needs[ "Wolfram`AdvancedSamplePaclet`" ],
    Null,
    TestID -> "AddOne-Needs"
]

VerificationTest[
    Context @ AddOne,
    "Wolfram`AdvancedSamplePaclet`",
    TestID -> "AddOne-Context"
]

VerificationTest[
    AddOne @ 1,
    2,
    TestID -> "AddOne-1"
]

VerificationTest[
    AddOne @ 2,
    3,
    TestID -> "AddOne-2"
]

VerificationTest[
    AddOne[ 2^64 ],
    HoldPattern[ LibraryFunction ][ ___ ][ 2^64 ],
    { LibraryFunction::cfsa },
    SameTest -> MatchQ,
    TestID   -> "AddOne-Integer-Overflow"
]