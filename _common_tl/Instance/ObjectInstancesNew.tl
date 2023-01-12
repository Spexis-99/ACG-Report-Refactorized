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
            (set RelatedInfoFile "TL/INFO/Product_Info.tl")(set Instances $ProductsInstances)(load "../../../../_common_tl/Instance/InstanceInfo.tl")
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


























































]]
