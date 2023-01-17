[[
////creates json file for the HTML/MainStrategychart.html page
(outfile "MainStrategychart.json")
(set total_num (numberin $ObjectiveInstances))
(set counter "0")
"( [ )"
(foreach ObjectiveInstance $ObjectiveInstances
    (
        (set obj $ObjectiveInstance)
        (set perspective $obj.*OBJECTIVE::belongs__to)
        (set initiatives $obj.*OBJECTIVE::requirement__realized)
        (set ObjvReqRealFunc $obj.*OBJECTIVE::requirements__realized)
        (set objective_project $ObjvReqRealFunc.*REQUIREMENT::projects)
        (set counter (add $counter "1"))
        (if (not $perspective)
            (
                (continue)
            )
        )
        "([
                "$(perspective)",
                "[[(set Name $obj)(set Report_Flag $Goal_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $ObjvReqRealFunc)(set Report_Flag "0")(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $objective_project)(set Report_Flag $Project_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]"
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