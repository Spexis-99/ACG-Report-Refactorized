[[
////creates json file for the HTML/Processchart.html page
(outfile "Processchart.json")
(set Process_list $Process_class.$Instances_func)
(set processCount (numberin $Process_list))
(set SupportProcessCount (numberin $Support_Process.$Instances_func ))
(set CoreProcessCount (numberin $Core_Process.$Instances_func ))
(set GuideProcessCount (numberin $Guide_Process.$Instances_func ))
(set total_num (numberin $Process_list))
(set counter "0")
"( [ )"
(foreach Process_instance $Process_list 
    (
        (set ddiag $Process_instance)
        (set Processowner $obj.*BUSINESS__PROCESS::Process__owner)
        (set counter (add $counter "1"))
        "([
                "[[(set Report_Flag $Process_Flag) (set Name $ddiag) (load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Report_Flag $Section_Flag) (set Name $Processowner) (load "../../../../_common_tl/NameOrAnchor.tl")]]"
        ,$(counter)

        ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"  
    )
)
"( ] )"
]]
