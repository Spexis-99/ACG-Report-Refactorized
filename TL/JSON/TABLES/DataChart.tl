[[
////creates json file for the HTML/Datachart.html page
(outfile "Datachart.json")
(set total_num (numberin $BusinessClassInstances))
(set counter "0")
"( [ )"
(foreach BusinessClassInstance $BusinessClassInstances
    (
        (set obj $BusinessClassInstance)
        (set domain $obj.$mClassSubjAreasFunc)
        (set name $obj.$name_func)
        (set description $obj.$briefDescription_func)
        (set process_used $obj.$infoSegmentationFunc)
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