[[
    (set Objective $obj)

    (set objective_name $obj.$objNameFunc)
    (set objective_desc $obj.$objBriefDescFunc)
    (set objective_kpi $obj.*OBJECTIVE::key__performance__indicators)
    (set objective_barrier $obj.*OBJECTIVE::*barrier)
    (set objective_subojective $obj.*OBJECTIVE::cascades__to)
    (set ObjvReqRealFunc $obj.*OBJECTIVE::requirements__realized)
    (set adopted_strategies $obj.*OBJECTIVE::strategies)
    (set objective_project $obj.*OBJECTIVE::requirements__realized.*REQUIREMENT::projects)
    (load "HTML/INFO/objective.html")

]]
