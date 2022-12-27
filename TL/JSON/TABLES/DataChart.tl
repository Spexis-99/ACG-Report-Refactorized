[[
////creates json file for the HTML/Datachart.html page
(outfile "Datachart.json")
(set entity_list $entity_class.$Instances_func)
(set total_num (numberin $entity_list))
(set counter "0")
"( [ )"
(foreach entity_instance $entity_list
    (
        (set obj $entity_instance)
        (set domain $obj.$supplier2_func)
        (set name $obj.$name_func)
        (set description $obj.$briefDescription_func)
        (set process_used $obj.$segmentation_fun2)
        (set counter (add $counter "1"))
        "([
                "$(name)",
               "$(description)",
                "$(domain)",
                "$(process_used)"
            ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"
    )
)
"( ] )"
]]