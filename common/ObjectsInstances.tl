[[	
	(load "TL/CORE/CONTROL.tl")
	(if (= $Event_Flag "1")
		(
			(set event_class "&EVENT")
			(set events_list $event_class.#CLASS::CLASS/instances)
			(foreach event_instance $events_list
				(
					(set obj $event_instance)
					(load "TL/INFO/Generic_Info.tl")
					////(load "ObjectsInfo.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Process_Flag "1")
		(
			(set process_class "&PROCESS ACTIVITY")
			(set process_list $process_class.#CLASS::CLASS/instances)
			(foreach process_instance $process_list
				(
					(set obj $process_instance)
					(load "TL/INFO/Generic_Info.tl")
					////(load "ObjectsInfo.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Swimlane_Flag "1")
		(
			(set swimlane_class "&SWIMLANE")
			(set swimlane_list $swimlane_class.#CLASS::CLASS/instances)
			(foreach swimlane_instance $swimlane_list
				(
					(set obj $swimlane_instance)
					(load "TL/INFO/Generic_Info.tl")
					////(load "ObjectsInfo.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Organization_Flag "1")
		(
			(set organization_class "*ORGANIZATION")
			(set organizations_list $organization_class.#CLASS::CLASS/instances)
			(foreach org_instance $organizations_list
				(
					(set obj $org_instance)
					(load "TL/INFO/Generic_Info.tl")
					////(load "TL/INFO/Organization_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Server_Flag "1") ////D
		(
		
			(set server_class "Physical Server")
			(set server_list $server_class.#CLASS::CLASS/instances)
			(foreach server_instance $server_list
				(
					(set obj $server_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/PhyServ_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Cluster_Flag "1") ////D
		(

			(set cluster_class "Cluster Server")
			(set cluster_list $cluster_class.#CLASS::CLASS/instances)
			(foreach cluster_instance $cluster_list
				(
					(set obj $cluster_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/ClusterServ.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Application_Flag "1")
		(
			(set application_class "*APPLICATION")
			(set application_list $application_class.#CLASS::CLASS/instances)
			(foreach application_instance $application_list
				(
					(set obj $application_instance)
					
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Appli_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Service_Flag "1")
		(
			(set service_class "SERVICE")
			(set service_list $service_class.#CLASS::CLASS/instances)
			(foreach service_instance $service_list
				(
					(set obj $service_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Service_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Entity_Flag "1")
		(
			(set entity_class "*INFORMATION")
			(set entity_list $entity_class.#CLASS::CLASS/instances)
			(foreach entity_instance $entity_list
				(
					(set obj $entity_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Entity_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Vlan_Flag "1")
		(
			(set vlan_class "*VIRTUAL LOCAL AREA NETWORK")
			(set vlan_list $vlan_class.#CLASS::CLASS/instances)
			(foreach vlan_instance $vlan_list
				(
					(set obj $vlan_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/VLAN_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $VirtServer_Flag "1")
		(

			(set virtual_server_class "Virtual machine server")
			(set virtual_server_list $virtual_server_class.#CLASS::CLASS/instances)
			(foreach virtual_server_instance $virtual_server_list
				(
					(set obj $virtual_server_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/VirtServer_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Network_Flag "1")
		(


			(set network_class "*NETWORK INTERCONNECTION DEVICE")
			(set network_list $network_class.#CLASS::CLASS/instances)
			(foreach network_instance $network_list
				(
					(set obj $network_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Network_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $DataStorage_Flag "1")
		(
		
			(set data_storage_class "Storage Solution Building Block")
			(set data_storage_list $data_storage_class.#CLASS::CLASS/instances)
			(foreach data_storage_instance $data_storage_list
				(
					(set obj $data_storage_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Data_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Security_Flag "1")
		(

		
			(set security_class "Security Solution Building Block")
			(set security_list $security_class.#CLASS::CLASS/instances)
			(foreach security_instance $security_list
				(
					(set obj $security_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Security_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
		(if (= $Section_Flag "1")
		(
		
			(set section_class "SECTION")
			(set section_list $section_class.#CLASS::CLASS/instances)
			(foreach section_instance $section_list
				(
					(set obj $section_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Section_info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Department_Flag "1")
		(
		
			(set department_class "DEPARTMENT")
			(set department_list $department_class.#CLASS::CLASS/instances)
			(foreach department_instance $department_list
				(
					(set obj $department_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Department_info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Division_Flag "1")
		(
		
			(set division_class "DIVISION")
			(set division_list $division_class.#CLASS::CLASS/instances)
			(foreach division_instance $division_list
				(
					(set obj $division_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Division_info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Mission_Flag "1")
		(

			(set mission_class "*MISSION")
			(set missions_list $mission_class.#CLASS::CLASS/instances)
			(foreach mission_instance $missions_list
				(
					(set obj $mission_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Mission_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Vision_Flag "1") ////Remove
		(
		
			(set vision_class "*VISION")
			(set visions_list $vision_class.#CLASS::CLASS/instances)
			(foreach vision_instance $visions_list
				(
					(set obj $vision_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Vision_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Xinfluencer_Flag "1") ////REM
		(
		
			(set Xinfluencer_class "EXTERNAL INFLUENCER")
			(set Xinfluencers_list $Xinfluencer_class.#CLASS::CLASS/instances)
			(foreach XI_instance $Xinfluencers_list
				(
					(set obj $XI_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Xinfluencer_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Iinfluencer_Flag "1") ////REM
		(
			(set Iinfluencer_class "INTERNAL INFLUENCER")
			(set Iinfluencers_list $Iinfluencer_class.#CLASS::CLASS/instances)
			(foreach II_instance $Iinfluencers_list
				(
					(set obj $II_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Iinfluencer_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $SD_Flag "1") ////REM
		(
		
			(set SD_class "STRATEGIC DESTINATION")
			(set SD_list $SD_class.#CLASS::CLASS/instances)
			(foreach SD_instance $SD_list
				(
					(set obj $SD_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/SD_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Goal_Flag "1") ////REM
		(
		
			(set goal_class "*GOAL")
			(set goals_list $goal_class.#CLASS::CLASS/instances)
			(foreach goal_instance $goals_list
				(
					(set obj $goal_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Goal_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Objective_Flag "1") ////REM
		(
		
			(set objective_class "*OBJECTIVE")
			(set objectives_list $objective_class.#CLASS::CLASS/instances)
			(foreach obj_instance $objectives_list
				(
					(set obj $obj_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Objective_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $StrategyMap_Flag "1") ////REM
		(
		
			(set stategyMap_class "STRATEGY MAP")
			(set stategyMaps_list $stategyMap_class.#CLASS::CLASS/instances)
			(foreach SM_instance $stategyMaps_list
				(
					(set obj $SM_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/StrategyMap_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Perspective_Flag "1") ////REM
		(
		
			(set perspective_class "PERSPECTIVE") 
			(set perspectives_list $perspective_class.#CLASS::CLASS/instances)
			(foreach persp_instance $perspectives_list
				(
					(set obj $persp_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Perspective_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $PerspectiveTheme_Flag "1")  ////REM
		(
			(set perspectiveTheme_class "PERSPECTIVE THEME") ?
			(set perspectiveThemes_list $perspectiveTheme_class.#CLASS::CLASS/instances)
			(foreach PT_instance $perspectiveThemes_list
				(
					(set obj $PT_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/PerspectiveTheme_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $StrategicTheme_Flag "1") ////REM
		(
		
			(set strategicTheme_class "STRATEGIC THEME")
			(set strategicThemes_list $strategicTheme_class.#CLASS::CLASS/instances)
			(foreach ST_instance $strategicThemes_list
				(
					(set obj $ST_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/StrategicTheme_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Strategy_Flag "1")
		(
		
			(set strategy_class "*STRATEGY")
			(set strategies_list $strategy_class.#CLASS::CLASS/instances)
			(foreach strategy_instance $strategies_list
				(
					(set obj $strategy_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Strategy_Info.tl") 
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Tactic_Flag "1")
		(
		
			(set tactic_class "TACTIC")
			(set tactics_list $tactic_class.#CLASS::CLASS/instances)
			(foreach tactic_instance $tactics_list
				(
					(set obj $tactic_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Tactic_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Barrier_Flag "1")
		(
		
			(set barrier_class "*BARRIER")
			(set barriers_list $barrier_class.#CLASS::CLASS/instances)
			(foreach barrier_instance $barriers_list
				(
					(set obj $barrier_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Barrier_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Initiative_Flag "1")
		(
		
			(set initiative_class "*MANAGEMENT INITIATIVE")
			(set initiatives_list $initiative_class.#CLASS::CLASS/instances)
			(foreach ini_instance $initiatives_list
				(
					(set obj $ini_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Initiative_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Project_Flag "1")
		(
		
			(set project_class "*PROJECT")
			(set projects_list $project_class.#CLASS::CLASS/instances)
			(foreach proj_instance $projects_list
				(
					(set obj $proj_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Project_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Product_Flag "1")
		(
		
			(set product_class "#PRODUCT")
			(set products_list $product_class.#CLASS::CLASS/instances)
			(foreach prod_instance $products_list
				(
					(set obj $prod_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Product_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Activity_Flag "1")
		(
		
			(set activity_class "#BUSINESS ACTIVITY")
			(set activities_list $activity_class.#CLASS::CLASS/instances)
			(foreach act_instance $activities_list
				(
					(set obj $act_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Activity_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $ABB_Flag "1")
		(
		
			(set ABB_class "*ARCHITECTURE BUILDING BLOCK")
			(set ABB_list $ABB_class.#CLASS::CLASS/instances)
			(foreach ABB_instance $ABB_list
				(
					(set obj $ABB_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/ABB_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Position_Flag "1")
		(
		
			(set position_class "*POSITION")
			(set position_list $position_class.#CLASS::CLASS/instances)
			(foreach position_instance $position_list
				(
					(set obj $position_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Position_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Pillar_Flag "1")
		(
		
			(set Pillar_class "BRAND PILLAR")
			(set pillar_list $Pillar_class.#CLASS::CLASS/instances)
			(foreach pillar_instance $pillar_list
				(
					(set obj $pillar_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/BrandPillar_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	
	(if (= $Role_Flag "1")
		(
		
			(set role_class "*ROLE")
			(set role_list $role_class.#CLASS::CLASS/instances)
			(foreach role_instance $role_list
				(
					(set obj $role_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Role_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Responsability_Flag "1") //// REM
		(
		
			(set responsability_class "*RESPONSIBILITY")
			(set responsability_list $responsability_class.#CLASS::CLASS/instances)
			(foreach responsability_instance $responsability_list
				(
					(set obj $responsability_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Responsibility_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Team_Flag "1")
		(
		
			(set team_class "*TEAM")
			(set team_list $team_class.#CLASS::CLASS/instances)
			(foreach team_instance $team_list
				(
					(set obj $team_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/TeamCommittee_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Committee_Flag "1") ////REM
		(
		
			(set committee_class "COMMITTEE")
			(set committee_list $committee_class.#CLASS::CLASS/instances)
			(foreach committee_instance $committee_list
				(
					(set obj $committee_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/TeamCommittee_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $CF_Flag "1")
		(
		
			(set CF_class "COMPETENCY FRAMEWORK")
			(set CF_list $CF_class.#CLASS::CLASS/instances)
			(foreach CF_instance $CF_list
				(
					(set obj $CF_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/CF_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Competency_Flag "1")
		(
		
			(set Competency_class "COMPETENCY")
			(set Competency_list $Competency_class.#CLASS::CLASS/instances)
			(foreach Competency_instance $Competency_list
				(
					(set obj $Competency_instance)
					(load "TL/INFO/Generic_Info.tl")
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
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $KPI_Flag "1")
		(
		
			(set KPI_class "*KEY PERFORMANCE INDICATOR")
			(set KPI_list $KPI_class.#CLASS::CLASS/instances)
			(foreach KPI_instance $KPI_list
				(
					(set obj $KPI_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/KPI_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Rule_Flag "1")
		(
		
			(set rule_class "#RULE")
			(set rule_list $rule_class.#CLASS::CLASS/instances)
			(foreach rule_instance $rule_list
				(
					(set obj $rule_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Rule_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Policy_Flag "1")
		(
		
			(set policy_class "*POLICY")
			(set policy_list $policy_class.#CLASS::CLASS/instances)
			(foreach policy_instance $policy_list
				(
					(set obj $policy_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Policy_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Law_Flag "1")
		(
		
			(set law_class "LAW") ?
			(set law_list $law_class.#CLASS::CLASS/instances)
			(foreach law_instance $law_list
				(
					(set obj $law_instance)
					(load "TL/INFO/Generic_Info.tl")
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
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Article_Flag "1")
		(
		
			(set article_class "ARTICLE")
			(set article_list $article_class.#CLASS::CLASS/instances)
			(foreach article_instance $article_list
				(
					(set obj $article_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Article_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)
	(if (= $Para_Flag "1")
		(

			(set para_class "PARA")
			(set para_list $para_class.#CLASS::CLASS/instances)
			(foreach para_instance $para_list
				(
					(set obj $para_instance)
					(load "TL/INFO/Generic_Info.tl")
					(load "TL/INFO/Paragraph_Info.tl")
					(load "TL/INFO/Generic2_Info.tl")
				)
			)
		)
	)

]]
