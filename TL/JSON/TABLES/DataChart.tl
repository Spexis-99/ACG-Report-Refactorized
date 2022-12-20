[[
////creates json file for the HTML/Datachart.html page
(outfile "Datachart.json")
(set entity_class "#BUSINESS CLASS")
(set entity_list $entity_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach entity_instance $entity_list
    (
        (set obj $entity_instance)
        (set domain $obj.$supplier2_func)
        (set name $obj.$name_func)
        (set description $obj.$briefDescription_func)
        (set process_used $obj.$segmentation_fun2)
        "(  
            {
                `$(name)`,
               `col2':'$(description)`,
                `col3':'$(domain)`,
                `col4':'$(process_used)`,
            },
        )"
    )
)
"( ]` )"
]]