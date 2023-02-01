[[	
//// Loaded by TL/CORE/GenerateObjects.tl
//// load related file design and info

////Application
    (if (= $Application_Flag "1")
		(
			(set Instances $AppInst)
    		(foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/ApplicationInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Cluster Server
	(if (= $Cluster_Flag "1") ////D
		(
			(set Instances $ClustServInst)
			(foreach instance $Instances
				(
					(set Instances $ClustServInst)
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/ClusterServ.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)
	
////Physical Server
	(if (= $Server_Flag "1") ////D
		(
			(set Instances $PhySerInst)
			(foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/PhyServ_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Service
	(if (= $Service_Flag "1")
		(
			(set Instances $ServiceInstance)
			(foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Service_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Information
	(if (= $Entity_Flag "1")
		(
			(set Instances $InformationInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/InformationInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////VLAN
    (if (= $Vlan_Flag "1")
        (
			(set Instances $VLANInstances)
			(foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/VLANInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
        )
    )

////Virtual machine server
    (if (= $VirtServer_Flag "1")
        (
			(set Instances $VMServInst)
			(foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/VMServerInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
        )
    )

////NETWORK INTERCONNECTION DEVICE ( NetworkChart)
    (if (= $Network_Flag "1")
		(
			(set Instances $NetworkInstances)
			(foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Network_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Storage Solution Building Block
	(if (= $DataStorage_Flag "1")
		(
			(set Instances $StorageSolInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Data_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Security Solution Building Block
    (if (= $Security_Flag "1")
		(
			(set Instances $SecuritySolInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Security_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Section
	(if (= $Section_Flag "1")
		(
			(set Instances $SectionInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Section_info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Department
	(if (= $Department_Flag "1")
		(
			(set Instances $DepartmentInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Department_info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Division
	(if (= $Division_Flag "1")
		(
			(set Instances $DivisionInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Division_info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Mission
	(if (= $Mission_Flag "1")
		(
			(set Instances $MissionInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Mission_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Vision
	(if (= $Vision_Flag "1") ////Remove
		(
			(set Instances $VisionInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Vision_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////EXTERNAL INFLUENCER
	(if (= $Xinfluencer_Flag "1") ////REM
		(
			(set Instances $ExtInfluencerInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Xinfluencer_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////INTERNAL INFLUENCER
    (if (= $Iinfluencer_Flag "1") ////REM
		(
            (set Instances $IntInfluencerInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Iinfluencer_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////STRATEGIC DESTINATION
    (if (= $SD_Flag "1") ////REM
		(
			(set Instances $StratDestInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/SD_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Goal
    (if (= $Goal_Flag "1") ////REM
		(
            (set Instances $GoalInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Goal_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Objective
	(if (= $Objective_Flag "1") ////REM
		(
            (set Instances $ObjectiveInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Objective_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////STRATEGY MAP
	(if (= $StrategyMap_Flag "1") ////REM
		(
            (set Instances $StategyMapInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/StrategyMap_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Perspective
	(if (= $Perspective_Flag "1") ////REM
		(
            (set Instances $PerspectiveInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Perspective_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////PerspectiveTheme
	(if (= $PerspectiveTheme_Flag "1")  ////REM
		(
            (set Instances $PerspectiveThemeInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/PerspectiveTheme_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Strategy
	(if (= $Strategy_Flag "1")
		(
            (set Instances $StrategyInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Strategy_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)
////StrategicTheme
	(if (= $StrategicTheme_Flag "1") ////REM
		(
            (set Instances $StrategicThemeInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/StrategicTheme_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Tactic
	(if (= $Tactic_Flag "1")
		(
            (set Instances $TacticInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Tactic_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Barrier
	(if (= $Barrier_Flag "1")
		(
            (set Instances $BarrierInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Barrier_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)


////Management Initiative
	(if (= $Initiative_Flag "1")
		(
            (set Instances $ManagementInitiativeInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/ManagementInitiativeInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)		

////Project
	(if (= $Project_Flag "1")
		(
            (set Instances $ProjectInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Project_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Product
(if (= $Product_Flag "1")
		(
            (set Instances $ProductInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Product_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Bussiness Activity
(if (= $Activity_Flag "1")
		(
			(set Instances $BussinessActivityInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/BussinessActivityInstancesInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////ARCHITECTURE BUILDING BLOCK
	(if (= $ABB_Flag "1")
		(
            (set Instances $ABBInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/ABB_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Position
	(if (= $Position_Flag "1")
		(
            (set Instances $PositionInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Position_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Brand Pillar 
	(if (= $Pillar_Flag "1")
		(
            (set Instances $BrandPillarInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/BrandPillar_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Role
	(if (= $Role_Flag "1")
		(
            (set Instances $RoleInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Role_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Responsability
	(if (= $Responsability_Flag "1") //// REM
		(
            (set Instances $ResponsabilityInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Responsibility_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Team
	(if (= $Team_Flag "1")
		(
            (set Instances $TeamInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/TeamInfo.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Committee ( Team )
	(if (= $Committee_Flag "1") ////REM
		(
            (set Instances $CommitteeInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/TeamCommittee_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Competency Framework
	(if (= $CF_Flag "1")
		(
            (set Instances $CFInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/CF_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////KPI
	(if (= $KPI_Flag "1")
		(
            (set Instances $KPIInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/KPI_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)	

////Rule
	(if (= $Rule_Flag "1")
		(
			(set Instances $RuleInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Rule_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Policy
	(if (= $Policy_Flag "1")
		(
			(set Instances $PolicyInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Policy_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Article
	(if (= $Article_Flag "1")
		(
			(set Instances $ArticleInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Article_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Paragraph
	(if (= $Para_Flag "1")
		(
            (set Instances $PARAInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Paragraph_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Event
	(if (= $Event_Flag "1")
		(
            (set Instances $EventInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Event_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////Processes Activity
	(if (= $Process_Flag "1")
		(
			(set Instances $ProcessActivityInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					////(load "TL/INFO/Unkown_info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////SWIMLANE
	(if (= $Swimlane_Flag "1")
		(
			(set Instances $SwimlaneInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Swimlane_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
		)
	)

////ORGANIZATION
	(if (= $Organization_Flag "1")
		(
            (set Instances $OrganizationInstances)
            (foreach instance $Instances
				(
					(load "../../../../_common_tl/OBJECT/ObjectInfo1.tl")
					(load "TL/INFO/Organization_Info.tl")
					(load "../../../../_common_tl/OBJECT/ObjectInfo2.tl")
				)
			)
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
					(load "../../../../_common_tl/OBJECT/Description.tl")
					(set C_Level "Acquiring")
					(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")

					(outfile $C_ApplyFile)
					(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/OBJECT/Description.tl")
					(set C_Level "Applying")(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")

					(outfile $C_LeverageFile)(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/OBJECT/Description.tl")
					(set C_Level "Leveraging")(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					
					(outfile $C_VisionFile)(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/OBJECT/Description.tl")
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
					(load "../../../../_common_tl/DIAGRAM/RelatedDiagrams.tl")
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
