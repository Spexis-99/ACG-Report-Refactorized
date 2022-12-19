[[
    (set Objective $obj)

    (set objective_name $obj.$name_func)
    (set objective_desc $obj.$briefDescription_func)
    (set objective_kpi $obj.*OBJECTIVE::key__performance__indicators)
    (set objective_barrier $obj.*OBJECTIVE::*barrier)
    (set objective_subojective $obj.*OBJECTIVE::cascades__to)
    (set Objective_Initiative_func $obj.*OBJECTIVE::requirements__realized)
    (set adopted_strategies $obj.*OBJECTIVE::strategies)
    (set objective_project $obj.*OBJECTIVE::requirements__realized.*REQUIREMENT::projects)
    (load "HTML_Files/objective.html")

]]
