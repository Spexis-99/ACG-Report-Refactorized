[[
////creates json file for the HTML/Processchart.html page
(outfile "Processchart.json")
(set processCount (numberin $BusinessProcessInstances))
(set SupportProcessCount (numberin $SupportProcess.$classClassInstFunc ))
(set CoreProcessCount (numberin $CoreProcess.$classClassInstFunc ))
(set GuideProcessCount (numberin $GuideProcess.$classClassInstFunc ))
(set counter "0")
"( [ )"
(foreach BusinessProcessInstance $BusinessProcessInstances 
    (
        (set ddiag $BusinessProcessInstance)
        (set Processowner $obj.*BUSINESS__PROCESS::Process__owner)
        (set counter (add $counter "1"))
        "([
                "[[(set Report_Flag $Process_Flag) (set Name $ddiag) (load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Report_Flag $Section_Flag) (set Name $Processowner) (load "../../../../_common_tl/NameOrAnchor.tl")]]"
        ,$(counter)

        ][[
                (if (not (= $counter $processCount))
                    ("(,)")
                )
            ]])"  
    )
)
"( ] )"
]]
