[[
////creates json file for the HTML/MainStrategychart.html page
(outfile "MainStrategychart.json")
(set MainStrategy_list $MainStrategy_class.$Instances_func)
(set total_num (numberin $MainStrategy_list))
(set counter "0")
"( [ )"
(foreach MainStrategy_instance $MainStrategy_list
    (
        (set obj $MainStrategy_instance)
        (set perspective $obj.*OBJECTIVE::belongs__to)
        (set initiatives $obj.*OBJECTIVE::requirement__realized)
        (set Objective_Initiative_func $obj.*OBJECTIVE::requirements__realized)
        (set objective_project $Objective_Initiative_func.*REQUIREMENT::projects)
        (set counter (add $counter "1"))
        (if (not $perspective)
            (
                (continue)
            )
        )
        "([
                "$(perspective)",
                "[[(set Name $obj)(set Report_Flag $Goal_Flag)(set ObjList "1")(load "../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $Objective_Initiative_func)(set Report_Flag "0")(set ObjList "1")(load "../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $objective_project)(set Report_Flag $Project_Flag)(set ObjList "1")(load "../../../_common_tl/NameOrAnchor.tl")]]"
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