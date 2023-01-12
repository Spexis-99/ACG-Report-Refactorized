[[

////Apllication (ApplicationChart)
    (set ApplicationClass "*APPLICATION")
    (set ApplicationInstances $applicationClass.$classInstancesFunc)

////Cluster Server
    (set ClusterServerClass "Cluster Server")
    (set ClusterServerInstances $clusterClass.$classInstancesFunc)

////Physical Server ( ServerChart )
    (set PhysicalServerClass "Physical Server")
    (set PhysicalServerInstances $serverClass.$classInstancesFunc)

////Virtual machine server ( ServerChart , SAPChart )
    (set virtual_serverClass "Virtual machine server")
    (set VMServerClass "Virtual machine server")
    (set VMServerInstances $VMServerClass.$classInstancesFunc)

////Service
    (set ServiceClass "SERVICE")
    (set ServiceInstances $serviceClass.$classInstancesFunc)

////Information
    (set InformationClass "*INFORMATION")
    (set InformationInstances $EntityClass.$classInstancesFunc)

////BusinessClass ( DataChart )
    (set BusinessClass "#BUSINESS CLASS")
    (set BusinessClassInstances $BusinessClass.$classInstancesFunc)

////VIRTUAL LOCAL AREA NETWORK ( VLANChart )
    (set VLANClass "*VIRTUAL LOCAL AREA NETWORK")
    (set VLANInstances $VLANClass.$classInstancesFunc)

////NETWORK INTERCONNECTION DEVICE ( NetworkChart)
    (set NetworkClass "*NETWORK INTERCONNECTION DEVICE")
    (set NetworkInstances $networkClass.$classInstancesFunc)

////Storage Solution Building Block
    (set StorageSolClass "Storage Solution Building Block")
	(set StorageSolInstances $StorageSolClass.$classInstancesFunc)

////Security Solution Building Block
    (set SecuritySolClass "Security Solution Building Block")
    (set SecuritySolInstances $SecuritySolClass.$classInstancesFunc)

////SECTION
    (set SectionClass "SECTION")
	(set SectionInstances $SectionClass.$classInstancesFunc)

////Department
    (set DepartmentClass "DEPARTMENT")
    (set DepartmentInstances $DepartmentClass.$classInstancesFunc)

////Division
    (set DivisionClass "DIVISION")
    (set DivisionInstances $DivisionClass.$classInstancesFunc)

////Mission
    (set MissionClass "*MISSION")
    (set MissionInstances $MissionClass.$classInstancesFunc)

////Vision
    (set VisionClass "*VISION")
    (set VisionInstances $VisionClass.$classInstancesFunc)

////EXTERNAL INFLUENCER
    (set ExtInfluencerClass "EXTERNAL INFLUENCER")
    (set ExtInfluencerInstances $ExtInfluencerClass.$classInstancesFunc)

////INTERNAL INFLUENCER
    (set IntInfluencerClass "INTERNAL INFLUENCER")
    (set IntInfluencerInstances $IntInfluencerClass.$classInstancesFunc)

////STRATEGIC DESTINATION
    (set StratDestClass "STRATEGIC DESTINATION")
    (set StratDestInstances $StratDestClass.$classInstancesFunc)

////Goal
    (set GoalClass "*GOAL")
    (set GoalInstances $GoalClass.$classInstancesFunc)

////Objective
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$classInstancesFunc)

////STRATEGY MAP
    (set StategyMapClass "STRATEGY MAP")
	(set StategyMapInstances $stategyMapClass.$classInstancesFunc)

////Perspective
    (set PerspectiveClass "PERSPECTIVE") 
    (set PerspectiveInstances $perspectiveClass.$classInstancesFunc)
		
////PerspectiveTheme_Flag
    (set PerspectiveThemeClass "PERSPECTIVE THEME") ?
    (set PerspectiveThemeInstances $PerspectiveThemeClass.$classInstancesFunc)

////Strategy
    (set StrategyClass "*STRATEGY")
    (set StrategyInstances $StrategyClass.$classInstancesFunc)

////StrategicTheme
	(set StrategicThemeClass "STRATEGIC THEME")
    (set StrategicThemeInstances $StrategicThemeClass.$classInstancesFunc)

////Tactic
    (set TacticClass "TACTIC")
    (set TacticInstances $TacticClass.$classInstancesFunc)

////Barrier
    (set BarrierClass "*BARRIER")
    (set BarrierInstances $BarrierClass.$classInstancesFunc)

////Management Initiative
    (set ManagementInitiativeClass "*MANAGEMENT INITIATIVE")
    (set ManagementInitiativeInstances $ManagementInitiativeClass.$classInstancesFunc)

////Project ( ProjectChart )
	(set ProjectClass "*PROJECT")
    (set ProjectInstances $ProjectClass.$classInstancesFunc)

////Product
    (set ProductClass "#PRODUCT")
    (set ProductInstances $ProductClass.$classInstancesFunc)	

////Bussiness Activity
    (set BussinessActivityClass "#BUSINESS ACTIVITY")
    (set BussinessActivityInstances $BussinessActivityClass.$classInstancesFunc)

////ARCHITECTURE BUILDING BLOCK
    (set ABBClass "*ARCHITECTURE BUILDING BLOCK")
	(set ABBInstances $ABBClass.$classInstancesFunc)

////Position
    (set PositionClass "*POSITION")
    (set PositionInstances $PositionClass.$classInstancesFunc)

////Pillar 
    (set BrandPillarClass "BRAND PILLAR")
    (set BrandPillarInstances $BrandPillarClass.$classInstancesFunc)

////Role
	(set RoleClass "*ROLE")
	(set RoleInstances $RoleClass.$classInstancesFunc)

////Responsability
	(set ResponsabilityClass "*RESPONSIBILITY")
	(set ResponsabilityInstances $ResponsabilityClass.$classInstancesFunc)	

////Team
	(set TeamClass "*TEAM")
	(set TeamInstances $TeamClass.$classInstancesFunc)

////Committee ( Team )
	(set CommitteeClass "COMMITTEE")
	(set CommitteeInstances $CommitteeClass.$classInstancesFunc)

////Competency Framework
	(set CFClass "COMPETENCY FRAMEWORK")
	(set CFInstances $CFClass.$classInstancesFunc)

////KPI
	(set KPIClass "*KEY PERFORMANCE INDICATOR")
	(set KPIInstances $KPIClass.$classInstancesFunc)

////Rule
	(set RuleClass "#RULE")
	(set RuleInstances $RuleClass.$classInstancesFunc)

////Policy
	(set PolicyClass "*POLICY")
	(set PolicyInstances $PolicyClass.$classInstancesFunc)

////Article
	(set ArticleClass "ARTICLE")
	(set ArticleInstances $ArticleClass.$classInstancesFunc)

////Paragraph
	(set PARAClass "PARA")
	(set PARAInstances $PARAClass.$classInstancesFunc)

////Event
    (set EventClass "&EVENT")
    (set EventInstances $EventClass.$classInstancesFunc)

////Processes Activity
    (set ProcessActivityClass "&PROCESS ACTIVITY")
    (set ProcessActivityInstances $processClass.$classInstancesFunc)

////SWIMLANE
    (set SwimlaneClass "&SWIMLANE")
    (set SwimlaneInstances $SwimlaneClass.$classInstancesFunc)

////ORGANIZATION
	(set OrganizationClass "*ORGANIZATION")
	(set OrganizationInstances $OrganizationClass.$classInstancesFunc)

////Business Process ( ProcessChart )
    (set BusinessProcessClass "*BUSINESS PROCESS")
    (set SupportProcess "*SUPPORTING PROCESS")
    (set CoreProcess "*CORE PROCESS")
    (set GuideProcess "Governing Process")

////Business Capability ( CapabilityChart )
    (set BusinessCapabilityClass "BUSINESS CAPABILITY")
    (set BusinessCapabilityInstances $BusinessCapabilityClass.$classInstancesFunc)
    
////OBJECTIVE ( MainStrategyChart , ObjectiveChart )
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$classInstancesFunc)

]]