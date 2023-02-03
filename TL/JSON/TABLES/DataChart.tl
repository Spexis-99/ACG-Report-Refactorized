[[
////creates json file for the HTML/Datachart.html page
(outfile "Datachart.json")
(set total_num (numberin $BusinessClassInstances))
(set counter "0")
"( [ )"
(foreach BusinessClassInstance $BusinessClassInstances
    (
        (localvar obj)
        (set obj $BusinessClassInstance)
        (set domain $obj.$mClassSubjAreasFunc)
        (set name $obj.$objNameFunc)
        (set description $obj.$objBriefDescFunc)
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