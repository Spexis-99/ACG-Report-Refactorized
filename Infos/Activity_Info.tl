[[
//// purpose to load the Barrier
//// loaded by object.tl

(set activity $obj)
(set activity_resources $activity.$activity_resources_func)
(set activity_result $activity.$activity_result_func)
(set sub_activities (new-list))

(set SubDiag $activity.$SubDiag_func)
(set containing $SubDiag.$DiagContaining_func)
(foreach item $containing
	(
		(if (isa $item "#BUSINESS ACTIVITY") 
			(
				(set sub_activities (union $sub_activities $item))
			)
		)
	)
)

(set super_activity $activity.$superActivity_func)
(set Policies $activity.$Policies_func)
(set Rules $activity.$Rules_func)

]]