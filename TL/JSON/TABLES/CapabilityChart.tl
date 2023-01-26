[[
////creates json file for the HTML/CapabilityChart.html page
(outfile "CapabilityChart.json")
(set total_num (numberin $BusinessCapabilityInstances))
(set counter "0")
"( [ )"
(foreach BusinessCapabilityInstance $BusinessCapabilityInstances
    (
        (set obj $BusinessCapabilityInstance)
        (set objname $obj.$objNameFunc)
        (set owner $obj.$capOwnerFunc)
        (set owner2 $obj.$capOwnerFunc.$accPartySupervFunc)
        (set counter (add $counter "1"))
        "([
                "$(objname)",
                "[[(set Name $owner)(set Report_Flag $Section_Flag)(set ObjList "1")(load "_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $owner2)(set Report_Flag $Department_Flag)(set ObjList "1")(load "_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $segmentation)(set Report_Flag "0")(set ObjList "1")(load "_common_tl/NameOrAnchor.tl")]]"
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