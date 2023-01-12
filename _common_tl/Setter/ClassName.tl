[[

////Apllication (ApplicationChart)
    (set ApplicationClass "*APPLICATION")
    (set ApplicationInstances $applicationClass.$ClassInstancesFunc)

////Cluster Server
    (set ClusterServerClass "Cluster Server")
    (set ClusterServerInstances $clusterClass.$ClassInstancesFunc)

////Physical Server ( ServerChart )
    (set PhysicalServerClass "Physical Server")
    (set PhysicalServerInstances $serverClass.$ClassInstancesFunc)

////Virtual machine server ( ServerChart , SAPChart )
    (set virtual_serverClass "Virtual machine server")
    (set VMServerClass "Virtual machine server")
    (set VMServerInstances $VMServerClass.$ClassInstancesFunc)

////Service
    (set ServiceClass "SERVICE")
    (set ServiceInstances $serviceClass.$ClassInstancesFunc)

////Information
    (set InformationClass "*INFORMATION")
    (set InformationInstances $EntityClass.$ClassInstancesFunc)

////BusinessClass ( DataChart )
    (set BusinessClass "#BUSINESS CLASS")
    (set BusinessClassInstances $BusinessClass.$ClassInstancesFunc)

////VIRTUAL LOCAL AREA NETWORK ( VLANChart )
    (set VLANClass "*VIRTUAL LOCAL AREA NETWORK")
    (set VLANInstances $VLANClass.$ClassInstancesFunc)

////NETWORK INTERCONNECTION DEVICE ( NetworkChart)
    (set NetworkClass "*NETWORK INTERCONNECTION DEVICE")
    (set NetworkInstances $networkClass.$ClassInstancesFunc)

////Storage Solution Building Block
    (set StorageSolClass "Storage Solution Building Block")
	(set StorageSolInstances $StorageSolClass.$ClassInstancesFunc)

////Security Solution Building Block
    (set SecuritySolClass "Security Solution Building Block")
    (set SecuritySolInstances $SecuritySolClass.$ClassInstancesFunc)

////SECTION
    (set SectionClass "SECTION")
	(set SectionInstances $SectionClass.$ClassInstancesFunc)

////Department
    (set DepartmentClass "DEPARTMENT")
    (set DepartmentInstances $DepartmentClass.$ClassInstancesFunc)

////Division
    (set DivisionClass "DIVISION")
    (set DivisionInstances $DivisionClass.$ClassInstancesFunc)

////Mission
    (set MissionClass "*MISSION")
    (set MissionInstances $MissionClass.$ClassInstancesFunc)

////Vision
    (set VisionClass "*VISION")
    (set VisionInstances $VisionClass.$ClassInstancesFunc)

////EXTERNAL INFLUENCER
    (set ExtInfluencerClass "EXTERNAL INFLUENCER")
    (set ExtInfluencerInstances $ExtInfluencerClass.$ClassInstancesFunc)

////INTERNAL INFLUENCER
    (set IntInfluencerClass "INTERNAL INFLUENCER")
    (set IntInfluencerInstances $IntInfluencerClass.$ClassInstancesFunc)

////STRATEGIC DESTINATION
    (set StratDestClass "STRATEGIC DESTINATION")
    (set StratDestInstances $StratDestClass.$ClassInstancesFunc)

////Goal
    (set GoalClass "*GOAL")
    (set GoalInstances $GoalClass.$ClassInstancesFunc)

////Objective
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$ClassInstancesFunc)

////STRATEGY MAP
    (set StategyMapClass "STRATEGY MAP")
	(set StategyMapInstances $stategyMapClass.$ClassInstancesFunc)


////Perspective
    (set PerspectiveClass "PERSPECTIVE") 
    (set PerspectiveInstances $perspectiveClass.$ClassInstancesFunc)
		
////PerspectiveTheme_Flag
    (set PerspectiveThemeClass "PERSPECTIVE THEME") ?
    (set PerspectiveThemeInstances $PerspectiveThemeClass.$ClassInstancesFunc)

////Strategy
    (set StrategyClass "*STRATEGY")
    (set StrategyInstances $StrategyClass.$ClassInstancesFunc)

////StrategicTheme
	(set StrategicThemeClass "STRATEGIC THEME")
    (set StrategicThemeInstances $StrategicThemeClass.$ClassInstancesFunc)

////Tactic
    (set TacticClass "TACTIC")
    (set TacticInstances $TacticClass.$ClassInstancesFunc)

////Barrier
    (set BarrierClass "*BARRIER")
    (set BarrierInstances $BarrierClass.$ClassInstancesFunc)

////Management Initiative
    (set ManagementInitiativeClass "*MANAGEMENT INITIATIVE")
    (set ManagementInitiativeInstances $ManagementInitiativeClass.$ClassInstancesFunc)

////Project ( ProjectChart )
	(set ProjectClass "*PROJECT")
    (set ProjectInstances $ProjectClass.$ClassInstancesFunc)

////Product
    (set ProductClass "#PRODUCT")
    (set ProductsInstances $ProductClass.$ClassInstancesFunc)	


////Bussiness Activity
    (set BussinessActivityClass "#BUSINESS ACTIVITY")
    (set BussinessActivityInstances $BussinessActivityClass.$ClassInstancesFunc)

////ARCHITECTURE BUILDING BLOCK
    (set ABBClass "*ARCHITECTURE BUILDING BLOCK")
	(set ABBInstances $ABBClass.$ClassInstancesFunc)

////Position
    (set PositionClass "*POSITION")
    (set PositionInstances $PositionClass.$ClassInstancesFunc)

////Pillar 
    (set BrandPillarClass "BRAND PILLAR")
    (set BrandPillarInstances $BrandPillarClass.$ClassInstancesFunc)









































////Event
(set EventClass "&EVENT")
(set EventsInstances $EventClass.$ClassInstancesFunc)

////Processes Activity
(set ProcessActivityClass "&PROCESS ACTIVITY")
(set ProcessActivityInstances $processClass.$ClassInstancesFunc)

////Business Process
    (set BusinessProcessClass "*BUSINESS PROCESS")
    (set Support_Process "*SUPPORTING PROCESS")
    (set Core_Process "*CORE PROCESS")
    (set Guide_Process "Governing Process")

////SWIMLANE
    (set swimlaneClass "&SWIMLANE")
    (set swimlane_list $swimlaneClass.$ClassInstancesFunc)














////CapabilityChart
    (set CapabilityClass "BUSINESS CAPABILITY")
    
////MainStrategyChart
    (set MainStrategyClass "*OBJECTIVE")


////ObjectiveChart
    (set objectiveClass "*OBJECTIVE")









]]