[[
////creates json file for the HTML/ApplicationChart.html page
(outfile "ApplicationChart.Json")
(set app_class "*APPLICATION")
(set app_list $app_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach app_instance $app_list
    (
        (set obj $app_instance)
        (set name $obj.$name_func)
        (set brand $obj.$modelName_func)
        (set supplier $obj.$owner_func)
        (set VLAN_breifDescription $obj.$briefDescription_func)
        (set segmentation $obj.$capabilitiesSupported_func)
        "(
            {
                'col1':'[[(set Name $obj)(set Report_Flag $Application_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                'col2':'$(VLAN_breifDescription)',
                'col3':'[[(set Name $supplier)(set Report_Flag $Department_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                'col4':'[[(set Name $segmentation)(set Report_Flag "0")(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
            },
        )"
    )
)
"( ]` )"
]]
   
   