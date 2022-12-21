[[
////creates json file for the HTML/Processchart.html page
(outfile "Processchart.json")
(set Process_class "*BUSINESS PROCESS")
(set Process_list $Process_class.#CLASS::CLASS/instances)
(set processCount (numberin $Process_list))
(set Support_Process "*SUPPORTING PROCESS")
(set Core_Process "*CORE PROCESS")
(set Guide_Process "Governing Process")
(set SupportProcessCount (numberin $Support_Process.#CLASS::CLASS/instances ))
(set CoreProcessCount (numberin $Core_Process.#CLASS::CLASS/instances ))
(set GuideProcessCount (numberin $Guide_Process.#CLASS::CLASS/instances ))
(set total_num (numberin $Process_list))
(set counter "0")
"( [ )"
(foreach Process_instance $Process_list 
    (
        (set ddiag $Process_instance)
        (set Processowner $obj.*BUSINESS__PROCESS::Process__owner)
        (set counter (add $counter "1"))
        "([
                "[[(set Report_Flag $Process_Flag) (set Name $ddiag) (load "TL/CORE/NameOrAnchor.tl")]]"
                "[[(set Report_Flag $Section_Flag) (set Name $Processowner) (load "TL/CORE/NameOrAnchor.tl")]]"

        ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"  
    )
)
"( ] )"
]]
