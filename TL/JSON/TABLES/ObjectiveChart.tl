[[
////creates json file for the HTML/objectivechart.html page
(outfile "objectivechart.json")
(set total_num (numberin $ObjectiveInstances))
(set counter "0")
"( [ )"
(foreach ObjectiveInstance $ObjectiveInstances
  (
    (localvar obj)
    (set obj $ObjectiveInstance)
    (set Objective $obj)
    (set objective_name $obj.$objNameFunc)
    (set objective_desc $obj.$objBriefDescFunc)
    (set objective_kpi $obj.*OBJECTIVE::key__performance__indicators)
    (set objective_barrier $obj.*OBJECTIVE::*barrier)
    (set objective_subojective $obj.*OBJECTIVE::cascades__to)
    (set ObjvReqRealFunc $obj.*OBJECTIVE::requirements__realized)
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
        "[[(set Name $ObjvReqRealFunc)(set Report_Flag "0")(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
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