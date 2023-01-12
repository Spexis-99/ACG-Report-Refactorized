[[	

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
			(set organizations_list $organizationClass.$classInstancesFunc)
			(foreach org_instance $organizations_list
				(
					(set obj $org_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Server_Flag "1") ////D
		(
		
			(set serverClass "Physical Server")
			(set server_list $serverClass.$classInstancesFunc)
			(foreach server_instance $server_list
				(
					(set obj $server_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/PhyServ_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Cluster_Flag "1") ////D
		(

			(set clusterClass "Cluster Server")
			(set cluster_list $clusterClass.$classInstancesFunc)
			(foreach cluster_instance $cluster_list
				(
					(set obj $cluster_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/ClusterServ.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Application_Flag "1")
		(
			(set applicationClass "*APPLICATION")
			(set application_list $applicationClass.$classInstancesFunc)
			(foreach application_instance $application_list
				(
					(set obj $application_instance)
					
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Appli_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Service_Flag "1")
		(
			(set serviceClass "SERVICE")
			(set service_list $serviceClass.$classInstancesFunc)
			(foreach service_instance $service_list
				(
					(set obj $service_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Service_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Entity_Flag "1")
		(
			(set EntityClass "*INFORMATION")
			(set entity_list $EntityClass.$classInstancesFunc)
			(foreach entity_instance $entity_list
				(
					(set obj $entity_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Entity_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Vlan_Flag "1")
		(
			(set vlanClass "*VIRTUAL LOCAL AREA NETWORK")
			(set vlan_list $vlanClass.$classInstancesFunc)
			(foreach vlan_instance $vlan_list
				(
					(set obj $vlan_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/VLAN_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $VirtServer_Flag "1")
		(

			(set virtual_serverClass "Virtual machine server")
			(set virtual_server_list $virtual_serverClass.$classInstancesFunc)
			(foreach virtual_server_instance $virtual_server_list
				(
					(set obj $virtual_server_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/VirtServer_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Network_Flag "1")
		(


			(set networkClass "*NETWORK INTERCONNECTION DEVICE")
			(set network_list $networkClass.$classInstancesFunc)
			(foreach network_instance $network_list
				(
					(set obj $network_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Network_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $DataStorage_Flag "1")
		(
		
			(set data_storageClass "Storage Solution Building Block")
			(set data_storage_list $data_storageClass.$classInstancesFunc)
			(foreach data_storage_instance $data_storage_list
				(
					(set obj $data_storage_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Data_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Security_Flag "1")
		(

		
			(set securityClass "Security Solution Building Block")
			(set security_list $securityClass.$classInstancesFunc)
			(foreach security_instance $security_list
				(
					(set obj $security_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Security_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
		(if (= $Section_Flag "1")
		(
		
			(set sectionClass "SECTION")
			(set section_list $sectionClass.$classInstancesFunc)
			(foreach section_instance $section_list
				(
					(set obj $section_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Section_info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Department_Flag "1")
		(
		
			(set departmentClass "DEPARTMENT")
			(set department_list $departmentClass.$classInstancesFunc)
			(foreach department_instance $department_list
				(
					(set obj $department_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Department_info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Division_Flag "1")
		(
		
			(set divisionClass "DIVISION")
			(set division_list $divisionClass.$classInstancesFunc)
			(foreach division_instance $division_list
				(
					(set obj $division_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Division_info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Mission_Flag "1")
		(

			(set missionClass "*MISSION")
			(set missions_list $missionClass.$classInstancesFunc)
			(foreach mission_instance $missions_list
				(
					(set obj $mission_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Mission_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Vision_Flag "1") ////Remove
		(
		
			(set visionClass "*VISION")
			(set visions_list $visionClass.$classInstancesFunc)
			(foreach vision_instance $visions_list
				(
					(set obj $vision_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Vision_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Xinfluencer_Flag "1") ////REM
		(
		
			(set XinfluencerClass "EXTERNAL INFLUENCER")
			(set Xinfluencers_list $XinfluencerClass.$classInstancesFunc)
			(foreach XI_instance $Xinfluencers_list
				(
					(set obj $XI_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Xinfluencer_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Iinfluencer_Flag "1") ////REM
		(
			(set IinfluencerClass "INTERNAL INFLUENCER")
			(set Iinfluencers_list $IinfluencerClass.$classInstancesFunc)
			(foreach II_instance $Iinfluencers_list
				(
					(set obj $II_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Iinfluencer_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $SD_Flag "1") ////REM
		(
		
			(set SDClass "STRATEGIC DESTINATION")
			(set SD_list $SDClass.$classInstancesFunc)
			(foreach SD_instance $SD_list
				(
					(set obj $SD_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/SD_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Goal_Flag "1") ////REM
		(
		
			(set goalClass "*GOAL")
			(set goals_list $goalClass.$classInstancesFunc)
			(foreach goal_instance $goals_list
				(
					(set obj $goal_instance)
					(load "../../../../_common_tl/Instance/GenericInfo.tl")
					(load "TL/INFO/Goal_Info.tl")
					(load "../../../../_common_tl/Instance/GenericInfo2.tl")
				)
			)
		)
	)
	(if (= $Objective_Flag "1") ////REM
		(
		
			(set objectiveClass "*OBJECTIVE")
			(set objectives_list $objectiveClass.$classInstancesFunc)
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
			(set stategyMaps_list $stategyMapClass.$classInstancesFunc)
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
			(set perspectives_list $perspectiveClass.$classInstancesFunc)
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
			(set perspectiveThemes_list $perspectiveThemeClass.$classInstancesFunc)
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
			(set strategicThemes_list $strategicThemeClass.$classInstancesFunc)
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
			(set strategies_list $strategyClass.$classInstancesFunc)
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
			(set tactics_list $tacticClass.$classInstancesFunc)
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
			(set barriers_list $barrierClass.$classInstancesFunc)
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
			(set initiatives_list $initiativeClass.$classInstancesFunc)
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
			(set projects_list $projectClass.$classInstancesFunc)
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
			(set products_list $productClass.$classInstancesFunc)
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
			(set activities_list $activityClass.$classInstancesFunc)
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
			(set ABB_list $ABBClass.$classInstancesFunc)
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
			(set position_list $positionClass.$classInstancesFunc)
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
			(set pillar_list $PillarClass.$classInstancesFunc)
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
			(set role_list $roleClass.$classInstancesFunc)
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
			(set responsability_list $responsabilityClass.$classInstancesFunc)
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
			(set team_list $teamClass.$classInstancesFunc)
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
			(set committee_list $committeeClass.$classInstancesFunc)
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
			(set CF_list $CFClass.$classInstancesFunc)
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
			(set Competency_list $CompetencyClass.$classInstancesFunc)
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
			(set KPI_list $KPIClass.$classInstancesFunc)
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
			(set rule_list $ruleClass.$classInstancesFunc)
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
			(set policy_list $policyClass.$classInstancesFunc)
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
			(set law_list $lawClass.$classInstancesFunc)
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
			(set article_list $articleClass.$classInstancesFunc)
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
			(set para_list $paraClass.$classInstancesFunc)
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

]]
