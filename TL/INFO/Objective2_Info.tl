[[
    (set adopted_strategies $Objective.*OBJECTIVE::strategies)

(set initiative_list (new-list))
(set Objective_Tactic $Objective.$desiRsltSuppByFunc)
(set Objective_Initiative $Objective.$ObjvReqRealFunc)
(set Objective_Initiative2 $Objective.$objObjReqFunc)
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