[[
////creates json file for the HTML/ProjectChart.html page
(outfile "ProjectChart.json")
(set project_list $project_class.$Instances_func)
(set total_num (numberin $project_list))
(set counter "0")
"( [ )"
(foreach project_instance $project_list
    (
        (set obj $project_instance)
        (set sign $obj.$Title_func)
        (set project $obj.$name_func)
        (set description $obj.$briefDescription_func)
        (set owner $obj.$project_owner)
        (set start $obj.*PROJECT::start__date)
        (set duration $obj.*PROJECT::duration)
        (set cost $obj.*PROJECT::costs)
        (set counter (add $counter "1"))
        "([
                "$(sign)",
                "[[(set Name $obj)(set Report_Flag $Project_Flag)(set ObjList "1")(load "../../../_common_tl/NameOrAnchor.tl")]]",
                "$(description)",
                "[[(set Name $owner)(set Report_Flag $Section_Flag)(set ObjList "1")(load "../../../_common_tl/NameOrAnchor.tl")]]",
                "$(start)",
                "$(duration)",
                "$(total_cost)"
                        ,$(counter)

            ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"
    )
)
"( ] )"
]] 