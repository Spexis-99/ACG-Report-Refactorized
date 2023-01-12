[[
////creates json file for the HTML/ApplicationChart.html page
(outfile "ApplicationChart.Json")
(set total_num (numberin $ApplicationInstances))
(set counter "0")
"( [ )"
(foreach ApplicationInstance $ApplicationInstances
    (
        (set obj $ApplicationInstance)
        (set name $obj.$name_func)
        (set brand $obj.$modelName_func)
        (set supplier $obj.$owner_func)
        (set VLAN_breifDescription $obj.$briefDescription_func)
        (set segmentation $obj.$capabilitiesSupported_func)
        (set counter (add $counter "1"))
        "([
                "[[(set Name $obj)(set Report_Flag $Application_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "$(VLAN_breifDescription)",
                "[[(set Name $supplier)(set Report_Flag $Department_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $segmentation)(set Report_Flag "0")(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]"
            ]
            [[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]]
            )"
    )
)
"( ] )"
]]
   
   