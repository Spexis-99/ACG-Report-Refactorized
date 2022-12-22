[[
    (set adopted_strategies $Objective.*OBJECTIVE::strategies)

(set initiative_list (new-list))
(set Objective_Tactic $Objective.$Objective_Tactic_func)
(set Objective_Initiative $Objective.$Objective_Initiative_func)
(set Objective_Initiative2 $Objective.$Objective_Initiative2_func)
(set Objective_Initiative (union $Objective_Initiative $Objective_Initiative2))
(foreach initiative $Objective_Initiative
	(
		(if (isa $initiative "*MANAGEMENT INITIATIVE")
			((set initiative_list(union $initiative_list $initiative)))
		)
	)
)
	
(set Objective_KPI $Objective.*OBJECTIVE::key__performance__indicators)

]]