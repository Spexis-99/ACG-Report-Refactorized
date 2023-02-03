[[
////creates json file for the HTML/ProjectChart.html page
(outfile "ProjectChart.json")
(set total_num (numberin $ProjectInstances))
(set counter "0")
"( [ )"
(foreach ProjectInstance $ProjectInstances
    (
        (localvar obj)
        (set obj $ProjectInstance)
        (set sign $obj.$objTitleFunc)
        (set project $obj.$objNameFunc)
        (set description $obj.$objBriefDescFunc)
        (set owner $obj.$project_owner)
        (set start $obj.*PROJECT::start__date)
        (set duration $obj.*PROJECT::duration)
        (set cost $obj.*PROJECT::costs)
        (set counter (add $counter "1"))
        "([
                "$(sign)",
                "[[(set Name $obj)(set Report_Flag $Project_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "$(description)",
                "[[(set Name $owner)(set Report_Flag $Section_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
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