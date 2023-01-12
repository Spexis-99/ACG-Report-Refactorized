[[

	
	
	(if (= $Role_Flag "1")
		(
		
			(set roleClass "*ROLE")
			(set roleInstances $roleClass.$ClassInstancesFunc)
			
			(foreach roleInstance $roleInstances
				((set obj $roleInstance)(load "TL/INFO/Role_Info.tl"))
			)
		)
	)
	(if (= $Responsability_Flag "1") //// REM
		(
		
			(set responsabilityClass "*RESPONSIBILITY")
			(set responsabilityInstances $responsabilityClass.$ClassInstancesFunc)
			
			(foreach responsabilityInstance $responsabilityInstances
				((set obj $responsabilityInstance)(load "TL/INFO/Responsibility_Info.tl"))
			)
		)
	)
	(if (= $Team_Flag "1")
		(
		
			(set teamClass "*TEAM")
			(set teamInstances $teamClass.$ClassInstancesFunc)
			
			(foreach teamInstance $teamInstances
				((set obj $teamInstance)(load "TL/INFO/TeamCommittee_Info.tl"))
			)
		)
	)
	(if (= $Committee_Flag "1") ////REM
		(
		
			(set committeeClass "COMMITTEE")
			(set committeeInstances $committeeClass.$ClassInstancesFunc)
			
			(foreach committeeInstance $committeeInstances
				((set obj $committeeInstance)(load "TL/INFO/TeamCommittee_Info.tl"))
			)
		)
	)
	(if (= $CF_Flag "1")
		(
		
			(set CFClass "COMPETENCY FRAMEWORK")
			(set CFInstances $CFClass.$ClassInstancesFunc)
			
			(foreach CFInstance $CFInstances
				((set obj $CFInstance)(load "TL/INFO/CF_Info.tl"))
			)
		)
	)
	(if (= $Competency_Flag "1")
		(
		
			(set CompetencyClass "COMPETENCY")
			(set CompetencyInstances $CompetencyClass.$ClassInstancesFunc)
			
			(foreach CompetencyInstance $CompetencyInstances
				((set obj $CompetencyInstance)(set C_AcquireFile (append $class (append "Acquire_" (append $sur ".html"))))								(set C_ApplyFile (append $class (append "Apply_" (append $sur ".html"))))(set C_LeverageFile (append $class (append "Leverage_" (append $sur ".html"))))(set C_VisionFile (append $class (append "Visionary_" (append $sur ".html"))))(outfile $C_AcquireFile)(load "TL/SECTIONS/Header.tl")(load "../../../../_common_tl/Description.tl")(set C_Level "Acquiring")(load "TL/INFO/Competency_Info.tl")(load "../../../../_common_tl/RelatedDiagrams.tl")(load "../../../../_common_tl/LinkedFiles.tl")(outfile $C_ApplyFile)(load "TL/SECTIONS/Header.tl")(load "../../../../_common_tl/Description.tl")(set C_Level "Applying")(load "TL/INFO/Competency_Info.tl")(load "../../../../_common_tl/RelatedDiagrams.tl")(load "../../../../_common_tl/LinkedFiles.tl")(outfile $C_LeverageFile)(load "TL/SECTIONS/Header.tl")(load "../../../../_common_tl/Description.tl")(set C_Level "Leveraging")(load "TL/INFO/Competency_Info.tl")(load "../../../../_common_tl/RelatedDiagrams.tl")(load "../../../../_common_tl/LinkedFiles.tl")(outfile $C_VisionFile)(load "TL/SECTIONS/Header.tl")(load "../../../../_common_tl/Description.tl")(set C_Level "Visioning")(load "TL/INFO/Competency_Info.tl"))
			)
		)
	)
	(if (= $KPI_Flag "1")
		(
		
			(set KPIClass "*KEY PERFORMANCE INDICATOR")
			(set KPIInstances $KPIClass.$ClassInstancesFunc)
			
			(foreach KPIInstance $KPIInstances
				((set obj $KPIInstance)(load "TL/INFO/KPI_Info.tl"))
			)
		)
	)
	(if (= $Rule_Flag "1")
		(
		
			(set ruleClass "#RULE")
			(set ruleInstances $ruleClass.$ClassInstancesFunc)
			
			(foreach ruleInstance $ruleInstances
				((set obj $ruleInstance)(load "TL/INFO/Rule_Info.tl"))
			)
		)
	)
	(if (= $Policy_Flag "1")
		(
		
			(set policyClass "*POLICY")
			(set policyInstances $policyClass.$ClassInstancesFunc)
			
			(foreach policyInstance $policyInstances
				((set obj $policyInstance)(load "TL/INFO/Policy_Info.tl"))
			)
		)
	)
	(if (= $Law_Flag "1")
		(
		
			(set lawClass "LAW") ?
			(set lawInstances $lawClass.$ClassInstancesFunc)
			
			(foreach lawInstance $lawInstances
				((set obj $lawInstance)(set LawStructure (append (append (append $class "2_") $sur) ".html"))	(set savedobj $obj)(load "TL/INFO/LawGeneral_Info.tl")(load "../../../../_common_tl/RelatedDiagrams.tl")(set LinkedF "1")(load "../../../../_common_tl/LinkedFiles.tl")(set obj $savedobj)(outfile $LawStructure)(load "TL/SECTIONS/Header.tl")(load "TL/INFO/LawStructure_Info.tl"))
			)
		)
	)
	(if (= $Article_Flag "1")
		(
		
			(set articleClass "ARTICLE")
			(set articleInstances $articleClass.$ClassInstancesFunc)
			
			(foreach articleInstance $articleInstances
				((set obj $articleInstance)(load "TL/INFO/Article_Info.tl"))
			)
		)
	)
	(if (= $Para_Flag "1")
		(

			(set paraClass "PARA")
			(set paraInstances $paraClass.$ClassInstancesFunc)
			
			(foreach paraInstance $paraInstances
				((set obj $paraInstance)(load "TL/INFO/Paragraph_Info.tl"))
			)
		)
	)

	////Event
	(if (= $Event_Flag "1")
		(
			
			(foreach EventInstance $EventsInstances
				((set obj $EventInstance))
			)
		)
	)

	////Processes
	(if (= $Process_Flag "1")
		(
			
			(foreach processInstance $processInstances
				((set obj $processInstance))
			)
		)
	)


	////SWIMLANE
	(if (= $Swimlane_Flag "1")
		(
			
			(foreach swimlaneInstance $swimlaneInstances
				((set obj $swimlaneInstance))
			)
		)
	)
	//// ORGANIZATION
	(if (= $Organization_Flag "1")
		(
			(set organizationClass "*ORGANIZATION")
			(set organizationsInstances $organizationClass.$ClassInstancesFunc)
			
			(foreach orgInstance $organizationsInstances
				((set obj $orgInstance))
			)
		)
	)
    
    ]]