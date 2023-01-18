[[

////Apllication (ApplicationChart)
    (set ApplicationClass "*APPLICATION")
    (set ApplicationInstances $applicationClass.$classInstFunc)

////Cluster Server
    (set ClusterServerClass "Cluster Server")
    (set ClusterServerInstances $clusterClass.$classInstFunc)

////Physical Server ( ServerChart )
    (set PhysicalServerClass "Physical Server")
    (set PhysicalServerInstances $serverClass.$classInstFunc)

////Virtual machine server ( ServerChart , SAPChart )
    (set VMServerClass "Virtual machine server")
    (set VMServerInstances $VMServerClass.$classInstFunc)

////Service ( ServiceChart )
    (set ServiceClass "SERVICE")
    (set ServiceInstances $serviceClass.$classInstFunc)

////Information
    (set InformationClass "*INFORMATION")
    (set InformationInstances $EntityClass.$classInstFunc)

////BusinessClass ( DataChart )
    (set BusinessClass "#BUSINESS CLASS")
    (set BusinessClassInstances $BusinessClass.$classInstFunc)

////VIRTUAL LOCAL AREA NETWORK ( VLANChart )
    (set VLANClass "*VIRTUAL LOCAL AREA NETWORK")
    (set VLANInstances $VLANClass.$classInstFunc)

////NETWORK INTERCONNECTION DEVICE ( NetworkChart)
    (set NetworkClass "*NETWORK INTERCONNECTION DEVICE")
    (set NetworkInstances $networkClass.$classInstFunc)

////Storage Solution Building Block
    (set StorageSolClass "Storage Solution Building Block")
	(set StorageSolInstances $StorageSolClass.$classInstFunc)

////Security Solution Building Block
    (set SecuritySolClass "Security Solution Building Block")
    (set SecuritySolInstances $SecuritySolClass.$classInstFunc)

////SECTION
    (set SectionClass "SECTION")
	(set SectionInstances $SectionClass.$classInstFunc)

////Department
    (set DepartmentClass "DEPARTMENT")
    (set DepartmentInstances $DepartmentClass.$classInstFunc)

////Division
    (set DivisionClass "DIVISION")
    (set DivisionInstances $DivisionClass.$classInstFunc)

////Mission
    (set MissionClass "*MISSION")
    (set MissionInstances $MissionClass.$classInstFunc)

////Vision
    (set VisionClass "*VISION")
    (set VisionInstances $VisionClass.$classInstFunc)

////EXTERNAL INFLUENCER
    (set ExtInfluencerClass "EXTERNAL INFLUENCER")
    (set ExtInfluencerInstances $ExtInfluencerClass.$classInstFunc)

////INTERNAL INFLUENCER
    (set IntInfluencerClass "INTERNAL INFLUENCER")
    (set IntInfluencerInstances $IntInfluencerClass.$classInstFunc)

////STRATEGIC DESTINATION
    (set StratDestClass "STRATEGIC DESTINATION")
    (set StratDestInstances $StratDestClass.$classInstFunc)

////Goal
    (set GoalClass "*GOAL")
    (set GoalInstances $GoalClass.$classInstFunc)

////Objective
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$classInstFunc)

////STRATEGY MAP
    (set StategyMapClass "STRATEGY MAP")
	(set StategyMapInstances $stategyMapClass.$classInstFunc)

////Perspective
    (set PerspectiveClass "PERSPECTIVE") 
    (set PerspectiveInstances $perspectiveClass.$classInstFunc)
		
////PerspectiveTheme_Flag
    (set PerspectiveThemeClass "PERSPECTIVE THEME") ?
    (set PerspectiveThemeInstances $PerspectiveThemeClass.$classInstFunc)

////Strategy
    (set StrategyClass "*STRATEGY")
    (set StrategyInstances $StrategyClass.$classInstFunc)

////StrategicTheme
	(set StrategicThemeClass "STRATEGIC THEME")
    (set StrategicThemeInstances $StrategicThemeClass.$classInstFunc)

////Tactic
    (set TacticClass "TACTIC")
    (set TacticInstances $TacticClass.$classInstFunc)

////Barrier
    (set BarrierClass "*BARRIER")
    (set BarrierInstances $BarrierClass.$classInstFunc)

////Management Initiative
    (set ManagementInitiativeClass "*MANAGEMENT INITIATIVE")
    (set ManagementInitiativeInstances $ManagementInitiativeClass.$classInstFunc)

////Project ( ProjectChart )
	(set ProjectClass "*PROJECT")
    (set ProjectInstances $ProjectClass.$classInstFunc)

////Product
    (set ProductClass "#PRODUCT")
    (set ProductInstances $ProductClass.$classInstFunc)	

////Bussiness Activity
    (set BussinessActivityClass "#BUSINESS ACTIVITY")
    (set BussinessActivityInstances $BussinessActivityClass.$classInstFunc)

////ARCHITECTURE BUILDING BLOCK
    (set ABBClass "*ARCHITECTURE BUILDING BLOCK")
	(set ABBInstances $ABBClass.$classInstFunc)

////Position
    (set PositionClass "*POSITION")
    (set PositionInstances $PositionClass.$classInstFunc)

////Pillar 
    (set BrandPillarClass "BRAND PILLAR")
    (set BrandPillarInstances $BrandPillarClass.$classInstFunc)

////Role
	(set RoleClass "*ROLE")
	(set RoleInstances $RoleClass.$classInstFunc)

////Responsability
	(set ResponsabilityClass "*RESPONSIBILITY")
	(set ResponsabilityInstances $ResponsabilityClass.$classInstFunc)	

////Team
	(set TeamClass "*TEAM")
	(set TeamInstances $TeamClass.$classInstFunc)

////Committee ( Team )
	(set CommitteeClass "COMMITTEE")
	(set CommitteeInstances $CommitteeClass.$classInstFunc)

////Competency Framework
	(set CFClass "COMPETENCY FRAMEWORK")
	(set CFInstances $CFClass.$classInstFunc)

////KPI
	(set KPIClass "*KEY PERFORMANCE INDICATOR")
	(set KPIInstances $KPIClass.$classInstFunc)

////Rule
	(set RuleClass "#RULE")
	(set RuleInstances $RuleClass.$classInstFunc)

////Policy
	(set PolicyClass "*POLICY")
	(set PolicyInstances $PolicyClass.$classInstFunc)

////Article
	(set ArticleClass "ARTICLE")
	(set ArticleInstances $ArticleClass.$classInstFunc)

////Paragraph
	(set PARAClass "PARA")
	(set PARAInstances $PARAClass.$classInstFunc)

////Event
    (set EventClass "&EVENT")
    (set EventInstances $EventClass.$classInstFunc)

////Processes Activity
    (set ProcessActivityClass "&PROCESS ACTIVITY")
    (set ProcessActivityInstances $processClass.$classInstFunc)

////SWIMLANE
    (set SwimlaneClass "&SWIMLANE")
    (set SwimlaneInstances $SwimlaneClass.$classInstFunc)

////ORGANIZATION
	(set OrganizationClass "*ORGANIZATION")
	(set OrganizationInstances $OrganizationClass.$classInstFunc)

////Business Process ( ProcessChart )
    (set BusinessProcessClass "*BUSINESS PROCESS")
    (set BusinessProcessInstances $BusinessProcessClass.$classInstFunc)

    (set SupportProcess "*SUPPORTING PROCESS")
    (set CoreProcess "*CORE PROCESS")
    (set GuideProcess "Governing Process")

////Business Capability ( CapabilityChart )
    (set BusinessCapabilityClass "BUSINESS CAPABILITY")
    (set BusinessCapabilityInstances $BusinessCapabilityClass.$classInstFunc)
    
////OBJECTIVE ( MainStrategyChart , ObjectiveChart )
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$classInstFunc)

////Competency
	(set CompetencyClass "COMPETENCY")
	(set CompetencyInstances $CompetencyClass.$classInstFunc)

////Law
	(set LawClass "LAW")
	(set LawInstances $LawClass.$classInstFunc)	

]]