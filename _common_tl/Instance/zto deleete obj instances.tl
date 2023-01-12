[[

	
	
	
	(if (= $Objective_Flag "1") ////REM
		(
		
			(set objectiveClass "*OBJECTIVE")
			(set objectives_list $objectiveClass.$ClassInstancesFunc)
			(foreach obj_instance $objectives_list
				(
					(set obj $obj_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Objective_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $StrategyMap_Flag "1") ////REM
		(
		
			(set stategyMapClass "STRATEGY MAP")
			(set stategyMaps_list $stategyMapClass.$ClassInstancesFunc)
			(foreach SM_instance $stategyMaps_list
				(
					(set obj $SM_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/StrategyMap_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Perspective_Flag "1") ////REM
		(
		
			(set perspectiveClass "PERSPECTIVE") 
			(set perspectives_list $perspectiveClass.$ClassInstancesFunc)
			(foreach persp_instance $perspectives_list
				(
					(set obj $persp_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Perspective_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $PerspectiveTheme_Flag "1")  ////REM
		(
			(set perspectiveThemeClass "PERSPECTIVE THEME") ?
			(set perspectiveThemes_list $perspectiveThemeClass.$ClassInstancesFunc)
			(foreach PT_instance $perspectiveThemes_list
				(
					(set obj $PT_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/PerspectiveTheme_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $StrategicTheme_Flag "1") ////REM
		(
		
			(set strategicThemeClass "STRATEGIC THEME")
			(set strategicThemes_list $strategicThemeClass.$ClassInstancesFunc)
			(foreach ST_instance $strategicThemes_list
				(
					(set obj $ST_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/StrategicTheme_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Strategy_Flag "1")
		(
		
			(set strategyClass "*STRATEGY")
			(set strategies_list $strategyClass.$ClassInstancesFunc)
			(foreach strategy_instance $strategies_list
				(
					(set obj $strategy_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Strategy_Info.tl") 
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Tactic_Flag "1")
		(
		
			(set tacticClass "TACTIC")
			(set tactics_list $tacticClass.$ClassInstancesFunc)
			(foreach tactic_instance $tactics_list
				(
					(set obj $tactic_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Tactic_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Barrier_Flag "1")
		(
		
			(set barrierClass "*BARRIER")
			(set barriers_list $barrierClass.$ClassInstancesFunc)
			(foreach barrier_instance $barriers_list
				(
					(set obj $barrier_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Barrier_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Initiative_Flag "1")
		(
		
			(set initiativeClass "*MANAGEMENT INITIATIVE")
			(set initiatives_list $initiativeClass.$ClassInstancesFunc)
			(foreach ini_instance $initiatives_list
				(
					(set obj $ini_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Initiative_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Project_Flag "1")
		(
		
			(set projectClass "*PROJECT")
			(set projects_list $projectClass.$ClassInstancesFunc)
			(foreach proj_instance $projects_list
				(
					(set obj $proj_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Project_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Product_Flag "1")
		(
		
			(set productClass "#PRODUCT")
			(set products_list $productClass.$ClassInstancesFunc)
			(foreach prod_instance $products_list
				(
					(set obj $prod_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Product_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Activity_Flag "1")
		(
		
			(set activityClass "#BUSINESS ACTIVITY")
			(set activities_list $activityClass.$ClassInstancesFunc)
			(foreach act_instance $activities_list
				(
					(set obj $act_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Activity_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $ABB_Flag "1")
		(
		
			(set ABBClass "*ARCHITECTURE BUILDING BLOCK")
			(set ABB_list $ABBClass.$ClassInstancesFunc)
			(foreach ABB_instance $ABB_list
				(
					(set obj $ABB_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/ABB_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Position_Flag "1")
		(
		
			(set positionClass "*POSITION")
			(set position_list $positionClass.$ClassInstancesFunc)
			(foreach position_instance $position_list
				(
					(set obj $position_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Position_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Pillar_Flag "1")
		(
		
			(set PillarClass "BRAND PILLAR")
			(set pillar_list $PillarClass.$ClassInstancesFunc)
			(foreach pillar_instance $pillar_list
				(
					(set obj $pillar_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/BrandPillar_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	
	(if (= $Role_Flag "1")
		(
		
			(set roleClass "*ROLE")
			(set role_list $roleClass.$ClassInstancesFunc)
			(foreach role_instance $role_list
				(
					(set obj $role_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Role_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Responsability_Flag "1") //// REM
		(
		
			(set responsabilityClass "*RESPONSIBILITY")
			(set responsability_list $responsabilityClass.$ClassInstancesFunc)
			(foreach responsability_instance $responsability_list
				(
					(set obj $responsability_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Responsibility_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Team_Flag "1")
		(
		
			(set teamClass "*TEAM")
			(set team_list $teamClass.$ClassInstancesFunc)
			(foreach team_instance $team_list
				(
					(set obj $team_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/TeamCommittee_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Committee_Flag "1") ////REM
		(
		
			(set committeeClass "COMMITTEE")
			(set committee_list $committeeClass.$ClassInstancesFunc)
			(foreach committee_instance $committee_list
				(
					(set obj $committee_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/TeamCommittee_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $CF_Flag "1")
		(
		
			(set CFClass "COMPETENCY FRAMEWORK")
			(set CF_list $CFClass.$ClassInstancesFunc)
			(foreach CF_instance $CF_list
				(
					(set obj $CF_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/CF_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Competency_Flag "1")
		(
		
			(set CompetencyClass "COMPETENCY")
			(set Competency_list $CompetencyClass.$ClassInstancesFunc)
			(foreach Competency_instance $Competency_list
				(
					(set obj $Competency_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(set C_AcquireFile (append $class (append "Acquire_" (append $sur ".html"))))
													
					(set C_ApplyFile (append $class (append "Apply_" (append $sur ".html"))))
					(set C_LeverageFile (append $class (append "Leverage_" (append $sur ".html"))))
					(set C_VisionFile (append $class (append "Visionary_" (append $sur ".html"))))
					
					(outfile $C_AcquireFile)
					(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Acquiring")
					(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					
					(outfile $C_ApplyFile)
					(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Applying")
					(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					
					(outfile $C_LeverageFile)
					(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Leveraging")
					(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					
					(outfile $C_VisionFile)
					(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Visioning")
					(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $KPI_Flag "1")
		(
		
			(set KPIClass "*KEY PERFORMANCE INDICATOR")
			(set KPI_list $KPIClass.$ClassInstancesFunc)
			(foreach KPI_instance $KPI_list
				(
					(set obj $KPI_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/KPI_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Rule_Flag "1")
		(
		
			(set ruleClass "#RULE")
			(set rule_list $ruleClass.$ClassInstancesFunc)
			(foreach rule_instance $rule_list
				(
					(set obj $rule_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Rule_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Policy_Flag "1")
		(
		
			(set policyClass "*POLICY")
			(set policy_list $policyClass.$ClassInstancesFunc)
			(foreach policy_instance $policy_list
				(
					(set obj $policy_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Policy_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Law_Flag "1")
		(
		
			(set lawClass "LAW") ?
			(set law_list $lawClass.$ClassInstancesFunc)
			(foreach law_instance $law_list
				(
					(set obj $law_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(set LawStructure (append (append (append $class "2_") $sur) ".html"))	
					(set savedobj $obj)
					(load "TL/INFO/LawGeneral_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(set LinkedF "1")
					(load "../../../../_common_tl/LinkedFiles.tl")
					
					(set obj $savedobj)
					(outfile $LawStructure)
					(load "TL/SECTIONS/Header.tl")
					(load "TL/INFO/LawStructure_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Article_Flag "1")
		(
		
			(set articleClass "ARTICLE")
			(set article_list $articleClass.$ClassInstancesFunc)
			(foreach article_instance $article_list
				(
					(set obj $article_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Article_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Para_Flag "1")
		(

			(set paraClass "PARA")
			(set para_list $paraClass.$ClassInstancesFunc)
			(foreach para_instance $para_list
				(
					(set obj $para_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Paragraph_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)

	////Event
	(if (= $Event_Flag "1")
		(
			(foreach EventInstance $EventsInstances
				(
					(set obj $EventInstance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)

	////Processes
	(if (= $Process_Flag "1")
		(
			(foreach process_instance $process_list
				(
					(set obj $process_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)


	////SWIMLANE
	(if (= $Swimlane_Flag "1")
		(
			(foreach swimlane_instance $swimlane_list
				(
					(set obj $swimlane_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	//// ORGANIZATION
	(if (= $Organization_Flag "1")
		(
			(set organizationClass "*ORGANIZATION")
			(set organizations_list $organizationClass.$ClassInstancesFunc)
			(foreach org_instance $organizations_list
				(
					(set obj $org_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
    
    ]]