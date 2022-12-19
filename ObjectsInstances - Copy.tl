[[
	(set event_class "&EVENT")
	(set events_list $event_class.#CLASS::CLASS/instances)
	(foreach event_instance $events_list
		(
			(set obj $event_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set process_class "&PROCESS ACTIVITY")
	(set process_list $process_class.#CLASS::CLASS/instances)
	(foreach process_instance $process_list
		(
			(set obj $process_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set swimlane_class "&SWIMLANE")
	(set swimlane_list $swimlane_class.#CLASS::CLASS/instances)
	(foreach swimlane_instance $swimlane_list
		(
			(set obj $swimlane_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set organization_class "*ORGANIZATION")
	(set organizations_list $organization_class.#CLASS::CLASS/instances)
	(foreach org_instance $organizations_list
		(
			(set obj $org_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set server_class "Physical Server")
	(set server_list $server_class.#CLASS::CLASS/instances)
	(foreach server_instance $server_list
		(
			(set obj $server_instance)
			(load "ObjectsInfo.tl")
		)
	)

	(set application_class "*APPLICATION")
	(set application_list $application_class.#CLASS::CLASS/instances)
	(foreach application_instance $application_list
		(
			(set obj $application_instance)
			(load "ObjectsInfo.tl")
		)
	)

	(set virtual_server_class "Virtual machine server")
	(set virtual_server_list $virtual_server_class.#CLASS::CLASS/instances)
	(foreach virtual_server_instance $virtual_server_list
		(
			(set obj $virtual_server_instance)
			(load "ObjectsInfo.tl")
		)
	)

	
    
	(set mission_class "*MISSION")
	(set missions_list $mission_class.#CLASS::CLASS/instances)
	(foreach mission_instance $missions_list
		(
			(set obj $mission_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set vision_class "*VISION")
	(set visions_list $vision_class.#CLASS::CLASS/instances)
	(foreach vision_instance $visions_list
		(
			(set obj $vision_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set Xinfluencer_class "EXTERNAL INFLUENCER")
	(set Xinfluencers_list $Xinfluencer_class.#CLASS::CLASS/instances)
	(foreach XI_instance $Xinfluencers_list
		(
			(set obj $XI_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set Iinfluencer_class "INTERNAL INFLUENCER")
	(set Iinfluencers_list $Iinfluencer_class.#CLASS::CLASS/instances)
	(foreach II_instance $Iinfluencers_list
		(
			(set obj $II_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set SD_class "STRATEGIC DESTINATION")
	(set SD_list $SD_class.#CLASS::CLASS/instances)
	(foreach SD_instance $SD_list
		(
			(set obj $SD_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set goal_class "*GOAL")
	(set goals_list $goal_class.#CLASS::CLASS/instances)
	(foreach goal_instance $goals_list
		(
			(set obj $goal_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set objective_class "*OBJECTIVE")
	(set objectives_list $objective_class.#CLASS::CLASS/instances)
	(foreach obj_instance $objectives_list
		(
			(set obj $obj_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set stategyMap_class "STRATEGY MAP")
	(set stategyMaps_list $stategyMap_class.#CLASS::CLASS/instances)
	(foreach SM_instance $stategyMaps_list
		(
			(set obj $SM_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set perspective_class "PERSPECTIVE")
	(set perspectives_list $perspective_class.#CLASS::CLASS/instances)
	(foreach persp_instance $perspectives_list
		(
			(set obj $persp_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set perspectiveTheme_class "PERSPECTIVE THEME")
	(set perspectiveThemes_list $perspectiveTheme_class.#CLASS::CLASS/instances)
	(foreach PT_instance $perspectiveThemes_list
		(
			(set obj $PT_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set strategicTheme_class "STRATEGIC THEME")
	(set strategicThemes_list $strategicTheme_class.#CLASS::CLASS/instances)
	(foreach ST_instance $strategicThemes_list
		(
			(set obj $ST_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set strategy_class "*STRATEGY")
	(set strategies_list $strategy_class.#CLASS::CLASS/instances)
	(foreach strategy_instance $strategies_list
		(
			(set obj $strategy_instance)
			(load "ObjectsInfo.tl") 
		)
	)
	
	(set tactic_class "TACTIC")
	(set tactics_list $tactic_class.#CLASS::CLASS/instances)
	(foreach tactic_instance $tactics_list
		(
			(set obj $tactic_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set barrier_class "*BARRIER")
	(set barriers_list $barrier_class.#CLASS::CLASS/instances)
	(foreach barrier_instance $barriers_list
		(
			(set obj $barrier_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set initiative_class "*MANAGEMENT INITIATIVE")
	(set initiatives_list $initiative_class.#CLASS::CLASS/instances)
	(foreach ini_instance $initiatives_list
		(
			(set obj $ini_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set project_class "*PROJECT")
	(set projects_list $project_class.#CLASS::CLASS/instances)
	(foreach proj_instance $projects_list
		(
			(set obj $proj_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set product_class "#PRODUCT")
	(set products_list $product_class.#CLASS::CLASS/instances)
	(foreach prod_instance $products_list
		(
			(set obj $prod_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set activity_class "#BUSINESS ACTIVITY")
	(set activities_list $activity_class.#CLASS::CLASS/instances)
	(foreach act_instance $activities_list
		(
			(set obj $act_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set ABB_class "*ARCHITECTURE BUILDING BLOCK")
	(set ABB_list $ABB_class.#CLASS::CLASS/instances)
	(foreach ABB_instance $ABB_list
		(
			(set obj $ABB_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set position_class "*POSITION")
	(set position_list $position_class.#CLASS::CLASS/instances)
	(foreach position_instance $position_list
		(
			(set obj $position_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set Pillar_class "BRAND PILLAR")
	(set pillar_list $Pillar_class.#CLASS::CLASS/instances)
	(foreach pillar_instance $pillar_list
		(
			(set obj $pillar_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set service_class "SERVICE")
	(set service_list $service_class.#CLASS::CLASS/instances)
	(foreach service_instance $service_list
		(
			(set obj $service_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set role_class "*ROLE")
	(set role_list $role_class.#CLASS::CLASS/instances)
	(foreach role_instance $role_list
		(
			(set obj $role_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set responsability_class "*RESPONSIBILITY")
	(set responsability_list $responsability_class.#CLASS::CLASS/instances)
	(foreach responsability_instance $responsability_list
		(
			(set obj $responsability_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set team_class "*TEAM")
	(set team_list $team_class.#CLASS::CLASS/instances)
	(foreach team_instance $team_list
		(
			(set obj $team_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set committee_class "COMMITTEE")
	(set committee_list $committee_class.#CLASS::CLASS/instances)
	(foreach committee_instance $committee_list
		(
			(set obj $committee_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set CF_class "COMPETENCY FRAMEWORK")
	(set CF_list $CF_class.#CLASS::CLASS/instances)
	(foreach CF_instance $CF_list
		(
			(set obj $CF_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set Competency_class "COMPETENCY")
	(set Competency_list $Competency_class.#CLASS::CLASS/instances)
	(foreach Competency_instance $Competency_list
		(
			(set obj $Competency_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set KPI_class "*KEY PERFORMANCE INDICATOR")
	(set KPI_list $KPI_class.#CLASS::CLASS/instances)
	(foreach KPI_instance $KPI_list
		(
			(set obj $KPI_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set rule_class "#RULE")
	(set rule_list $rule_class.#CLASS::CLASS/instances)
	(foreach rule_instance $rule_list
		(
			(set obj $rule_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set policy_class "*POLICY")
	(set policy_list $policy_class.#CLASS::CLASS/instances)
	(foreach policy_instance $policy_list
		(
			(set obj $policy_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set law_class "LAW")
	(set law_list $law_class.#CLASS::CLASS/instances)
	(foreach law_instance $law_list
		(
			(set obj $law_instance)
			(load "ObjectsInfo.tl")
		)
	)
	
	(set article_class "ARTICLE")
	(set article_list $article_class.#CLASS::CLASS/instances)
	(foreach article_instance $article_list
		(
			(set obj $article_instance)
			(load "ObjectsInfo.tl")
		)
	)

	(set para_class "PARA")
	(set para_list $para_class.#CLASS::CLASS/instances)
	(foreach para_instance $para_list
		(
			(set obj $para_instance)
			(load "ObjectsInfo.tl")
		)
	)

]]
