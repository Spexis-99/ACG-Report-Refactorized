[[
//// purpose to load the Barrier
//// loaded by object.tl

(set activity $obj)
(set activity_resources $activity.$busActResFunc)
(set activity_result $activity.$busActRsltFunc)
(set sub_activities (new-list))

(set SubDiag $activity.$objDescByFunc)
(set containing $SubDiag.$DiagContFunc)
(foreach item $containing
	(
		(if (isa $item "#BUSINESS ACTIVITY") 
			(
				(set sub_activities (union $sub_activities $item))
			)
		)
	)
)

(set super_activity $activity.$objworkProdDescFunc)
(set Policies $activity.$busActGovByFunc)
(set Rules $activity.$busActGuidByFunc)

]]