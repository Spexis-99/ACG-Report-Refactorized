[[
////creates json file for the HTML/CapabilityChart.html page
(outfile "CapabilityChart.json")
(set Capability_class "BUSINESS CAPABILITY")
(set Capability_list $Capability_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach Capability_instance $Capability_list
    (
        (set obj $Capability_instance)
        (set objname $obj.$name_func)
        (set owner $obj.$owner_func)
        (set owner2 $obj.$owner_func.$parent_org_func)
        "(
            {
                'col1':'$(objname)',
                'col2':'[[(set Name $owner)(set Report_Flag $Section_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                'col3':'[[(set Name $owner2)(set Report_Flag $Department_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                'col4':'[[(set Name $segmentation)(set Report_Flag "0")(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
            },
        )"
    )
)
"( ]` )"
]]