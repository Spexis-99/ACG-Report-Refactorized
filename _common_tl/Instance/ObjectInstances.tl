[[	
////Application
    (if (= $Application_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/ApplicationInfo.tl")(set Instances $ApplicationInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Cluster Server
	(if (= $Cluster_Flag "1") ////D
		(
            (set RelatedInfoFile "TL/INFO/ClusterServ.tl")(set Instances $ClusterServerInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)
	
////Physical Server
	(if (= $Server_Flag "1") ////D
		(
            (set RelatedInfoFile "TL/INFO/PhyServ_Info.tl")(set Instances $PhysicalServerInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Service
	(if (= $Service_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Service_Info.tl")(set Instances $ServiceInstance)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Information
	(if (= $Entity_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/InformationInfo.tl")(set Instances $InformationInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////VLAN
    (if (= $Vlan_Flag "1")
        (
            (set RelatedInfoFile "TL/INFO/VLANInfo.tl")(set Instances $VLANInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
        )
    )

////Virtual machine server
    (if (= $VirtServer_Flag "1")
        (
            (set RelatedInfoFile "TL/INFO/VMServerInfo.tl")(set Instances $VMServerInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
        )
    )

////NETWORK INTERCONNECTION DEVICE ( NetworkChart)
    (if (= $Network_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Network_Info.tl")(set Instances $NetworkInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Storage Solution Building Block
	(if (= $DataStorage_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Data_Info.tl")(set Instances $StorageSolInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Security Solution Building Block
    (if (= $Security_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Security_Info.tl")(set Instances $SecuritySolInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Section
	(if (= $Section_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Section_info.tl")(set Instances $SectionInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Department
	(if (= $Department_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Department_info.tl")(set Instances $DepartmentInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Division
	(if (= $Division_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Division_info.tl")(set Instances $DivisionInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Mission
	(if (= $Mission_Flag "1")
		(

            (set RelatedInfoFile "TL/INFO/Mission_Info.tl")(set Instances $MissionInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Vision
	(if (= $Vision_Flag "1") ////Remove
		(
            (set RelatedInfoFile "TL/INFO/Vision_Info.tl")(set Instances $VisionInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////EXTERNAL INFLUENCER
	(if (= $Xinfluencer_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/Xinfluencer_Info.tl")(set Instances $ExtInfluencerInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////INTERNAL INFLUENCER
    (if (= $Iinfluencer_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/Iinfluencer_Info.tl")(set Instances $IntInfluencerInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////STRATEGIC DESTINATION
    (if (= $SD_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/SD_Info.tl")(set Instances $StratDestInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Goal
    (if (= $Goal_Flag "1") ////REM
		(
            Goal_Info
            (set RelatedInfoFile "TL/INFO/Goal_Info.tl")(set Instances $goal_instances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
            
		)
	)

////Objective
	(if (= $Objective_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/Objective_Info.tl")(set Instances $ObjectiveInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////STRATEGY MAP
	(if (= $StrategyMap_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/StrategyMap_Info.tl")(set Instances $StategyMapInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Perspective
	(if (= $Perspective_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/Perspective_Info.tl")(set Instances $PerspectiveInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////PerspectiveTheme
	(if (= $PerspectiveTheme_Flag "1")  ////REM
		(
            (set RelatedInfoFile "TL/INFO/PerspectiveTheme_Info.tl")(set Instances $PerspectiveThemeInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Strategy
	(if (= $Strategy_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Strategy_Info.tl")(set Instances $StrategyInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)
////StrategicTheme
	(if (= $StrategicTheme_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/StrategicTheme_Info.tl")(set Instances $StrategicThemeInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Tactic
	(if (= $Tactic_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Tactic_Info.tl")(set Instances $TacticInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Barrier
	(if (= $Barrier_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Barrier_Info.tl")(set Instances $BarrierInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)


////Management Initiative
	(if (= $Initiative_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/ManagementInitiativeInfo.tl")(set Instances $ManagementInitiativeInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)		

////Project
	(if (= $Project_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Project_Info.tl")(set Instances $ProjectInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Product
(if (= $Product_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Product_Info.tl")(set Instances $ProductInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Bussiness Activity
(if (= $Activity_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/BussinessActivityInstancesInfo.tl")(set Instances $BussinessActivityInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////ARCHITECTURE BUILDING BLOCK
	(if (= $ABB_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/ABB_Info.tl")(set Instances $ABBInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
			
		)
	)

////Position
	(if (= $Position_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Position_Info.tl")(set Instances $PositionInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Brand Pillar 
	(if (= $Pillar_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/BrandPillar_Info.tl")(set Instances $BrandPillarInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Role
	(if (= $Role_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Role_Info.tl")(set Instances $RoleInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Responsability
	(if (= $Responsability_Flag "1") //// REM
		(
            (set RelatedInfoFile "TL/INFO/Responsibility_Info.tl")(set Instances $ResponsabilityInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Team
	(if (= $Team_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/TeamInfo.tl")(set Instances $TeamInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Committee ( Team )
	(if (= $Committee_Flag "1") ////REM
		(
            (set RelatedInfoFile "TL/INFO/TeamCommittee_Info.tl")(set Instances $CommitteeInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Competency Framework
	(if (= $CF_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/CF_Info.tl")(set Instances $CFInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////KPI
	(if (= $KPI_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/KPI_Info.tl")(set Instances $KPIInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)	

////Rule
	(if (= $Rule_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Rule_Info.tl")(set Instances $RuleInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Policy
	(if (= $Policy_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Policy_Info.tl")(set Instances $PolicyInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Article
	(if (= $Article_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Article_Info.tl")(set Instances $ArticleInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Paragraph
	(if (= $Para_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Paragraph_Info.tl")(set Instances $PARAInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Event
	(if (= $Event_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Event_Info.tl")(set Instances $EventInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
			
		)
	)

////Processes Activity
	(if (= $Process_Flag "1")
		(
          ////  (set RelatedInfoFile "TL/INFO/Unkown_info.tl")(set Instances $ProcessActivityInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////SWIMLANE
	(if (= $Swimlane_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Swimlane_Info.tl")(set Instances $SwimlaneInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////ORGANIZATION
	(if (= $Organization_Flag "1")
		(
            (set RelatedInfoFile "TL/INFO/Organization_Info.tl")(set Instances $OrganizationInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
		)
	)

////Competency
	(if (= $Competency_Flag "1")
		(
			(foreach CompetencyInstance $CompetencyInstances
				(
					(set obj $CompetencyInstance)
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
					(set C_Level "Applying")(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")

					(outfile $C_LeverageFile)(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Leveraging")(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					
					(outfile $C_VisionFile)(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Visioning")
					(load "TL/INFO/Competency_Info.tl")
				)
			)
		)
	)

////Law
	(if (= $Law_Flag "1")
		(
			(foreach lawInstance $lawInstances
				(
					(set obj $lawInstance)
					(set LawStructure (append (append (append $class "2_") $sur) ".html"))	
					(set savedobj $obj)
					(load "TL/INFO/LawGeneral_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(set LinkedF "1")
					(load "../../../../_common_tl/LinkedFiles.tl")
					(set obj $savedobj)
					(outfile $LawStructure)
					(load "TL/SECTIONS/Header.tl")
					(load "TL/INFO/LawStructure_Info.tl"))
			)
		)
	)




]]
