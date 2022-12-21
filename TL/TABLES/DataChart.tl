[[
(outfile "DataChart.html")


(set entity_class "#BUSINESS CLASS")
(set entity_list $entity_class.#CLASS::CLASS/instances)
"( 
    <script>
    table_rows = [ 
        )"
(foreach entity_instance $entity_list
    (
        (set obj $entity_instance)
        (set domain $obj.$supplier2_func)
        (set name $obj.$name_func)
        (set description $obj.$briefDescription_func)
        (set process_used $obj.$segmentation_fun2)
        "(  
            {
                `$(name)`
                `$(description)`,
                `$(domain)`,
                `$(process_used)`,
            },
        )"
    )
)
"( 
    ]
    </script>
 )"



(load "HTML/DataChart.html")
]]