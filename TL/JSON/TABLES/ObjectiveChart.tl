[[
////creates json file for the HTML/objectivechart.html page
(outfile "objectivechart.json")
(set objective_list $objective_class.$Instances_func)
(set total_num (numberin $objective_list))
(set counter "0")
"( [ )"
(foreach objective_instance $objective_list
  (
    (set obj $objective_instance)
    (set Objective $obj)
    (set objective_name $obj.$name_func)
    (set objective_desc $obj.$briefDescription_func)
    (set objective_kpi $obj.*OBJECTIVE::key__performance__indicators)
    (set objective_barrier $obj.*OBJECTIVE::*barrier)
    (set objective_subojective $obj.*OBJECTIVE::cascades__to)
    (set Objective_Initiative_func $obj.*OBJECTIVE::requirements__realized)
    (set adopted_strategies $obj.*OBJECTIVE::strategies)
    (set objective_project $objective_initiative.INITIATIVE::implemented__by)
    (set counter (add $counter "1"))
    (if (not $objective_desc)
      (
        (continue)
      )
    )  
    "([
        "[[(set Name $obj)(set Report_Flag $Goal_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
        "$(objective_desc)",
        "[[(set Name $objective_subojective)(set Report_Flag "0")(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
        "[[(set Name $Objective_Initiative_func)(set Report_Flag "0")(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
        "[[(set Name $objective_kpi)(set Report_Flag $KPI_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]"
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