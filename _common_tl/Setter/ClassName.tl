[[

    (set classClassInstFunc     "#CLASS::CLASS/instances")

////Context
    (set CtxClass  "#CONTEXT")

////Diagram
    (set DiagClass              "#DIAGRAM")

////Apllication                 (ApplicationChart)
    (set AppClass               "*APPLICATION")
    (set AppInst                $AppClass.$classClassInstFunc)

////Cluster Server
    (set ClustServClass         "Cluster Server")
    (set ClustServInst          $clusterClass.$classClassInstFunc)

////Physical Server             ( ServerChart )
    (set PhySerClass            "Physical Server")
    (set PhySerInst             $serverClass.$classClassInstFunc)

////Virtual machine server      ( ServerChart , SAPChart )
    (set VMServClass            "Virtual machine server")
    (set VMServInst             $VMServClass.$classClassInstFunc)

////Service                     ( ServiceChart )
    (set SerClass               "SERVICE")
    (set SerInst                $SerClass.$classClassInstFunc)

////Information
    (set InformationClass "*INFORMATION")
    (set InformationInstances $EntityClass.$classClassInstFunc)

////BusinessClass ( DataChart )
    (set BusinessClass "#BUSINESS CLASS")
    (set BusinessClassInstances $BusinessClass.$classClassInstFunc)

////VIRTUAL LOCAL AREA NETWORK ( VLANChart )
    (set VLANClass "*VIRTUAL LOCAL AREA NETWORK")
    (set VLANInstances $VLANClass.$classClassInstFunc)

////NETWORK INTERCONNECTION DEVICE ( NetworkChart)
    (set NetworkClass "*NETWORK INTERCONNECTION DEVICE")
    (set NetworkInstances $networkClass.$classClassInstFunc)

////Storage Solution Building Block
    (set StorageSolClass "Storage Solution Building Block")
	(set StorageSolInstances $StorageSolClass.$classClassInstFunc)

////Security Solution Building Block
    (set SecuritySolClass "Security Solution Building Block")
    (set SecuritySolInstances $SecuritySolClass.$classClassInstFunc)

////SECTION
    (set SectionClass "SECTION")
	(set SectionInstances $SectionClass.$classClassInstFunc)

////Department
    (set DepartmentClass "DEPARTMENT")
    (set DepartmentInstances $DepartmentClass.$classClassInstFunc)

////Division
    (set DivisionClass "DIVISION")
    (set DivisionInstances $DivisionClass.$classClassInstFunc)

////Mission
    (set MissionClass "*MISSION")
    (set MissionInstances $MissionClass.$classClassInstFunc)

////Vision
    (set VisionClass "*VISION")
    (set VisionInstances $VisionClass.$classClassInstFunc)

////EXTERNAL INFLUENCER
    (set ExtInfluencerClass "EXTERNAL INFLUENCER")
    (set ExtInfluencerInstances $ExtInfluencerClass.$classClassInstFunc)

////INTERNAL INFLUENCER
    (set IntInfluencerClass "INTERNAL INFLUENCER")
    (set IntInfluencerInstances $IntInfluencerClass.$classClassInstFunc)

////STRATEGIC DESTINATION
    (set StratDestClass "STRATEGIC DESTINATION")
    (set StratDestInstances $StratDestClass.$classClassInstFunc)

////Goal
    (set GoalClass "*GOAL")
    (set GoalInstances $GoalClass.$classClassInstFunc)

////Objective
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$classClassInstFunc)

////STRATEGY MAP
    (set StategyMapClass "STRATEGY MAP")
	(set StategyMapInstances $stategyMapClass.$classClassInstFunc)

////Perspective
    (set PerspectiveClass "PERSPECTIVE") 
    (set PerspectiveInstances $perspectiveClass.$classClassInstFunc)
		
////PerspectiveTheme_Flag
    (set PerspectiveThemeClass "PERSPECTIVE THEME") ?
    (set PerspectiveThemeInstances $PerspectiveThemeClass.$classClassInstFunc)

////Strategy
    (set StrategyClass "*STRATEGY")
    (set StrategyInstances $StrategyClass.$classClassInstFunc)

////StrategicTheme
	(set StrategicThemeClass "STRATEGIC THEME")
    (set StrategicThemeInstances $StrategicThemeClass.$classClassInstFunc)

////Tactic
    (set TacticClass "TACTIC")
    (set TacticInstances $TacticClass.$classClassInstFunc)

////Barrier
    (set BarrierClass "*BARRIER")
    (set BarrierInstances $BarrierClass.$classClassInstFunc)

////Management Initiative
    (set ManagementInitiativeClass "*MANAGEMENT INITIATIVE")
    (set ManagementInitiativeInstances $ManagementInitiativeClass.$classClassInstFunc)

////Project ( ProjectChart )
	(set ProjectClass "*PROJECT")
    (set ProjectInstances $ProjectClass.$classClassInstFunc)

////Product
    (set ProductClass "#PRODUCT")
    (set ProductInstances $ProductClass.$classClassInstFunc)	

////Bussiness Activity
    (set BussinessActivityClass "#BUSINESS ACTIVITY")
    (set BussinessActivityInstances $BussinessActivityClass.$classClassInstFunc)

////ARCHITECTURE BUILDING BLOCK
    (set ABBClass "*ARCHITECTURE BUILDING BLOCK")
	(set ABBInstances $ABBClass.$classClassInstFunc)

////Position
    (set PositionClass "*POSITION")
    (set PositionInstances $PositionClass.$classClassInstFunc)

////Pillar 
    (set BrandPillarClass "BRAND PILLAR")
    (set BrandPillarInstances $BrandPillarClass.$classClassInstFunc)

////Role
	(set RoleClass "*ROLE")
	(set RoleInstances $RoleClass.$classClassInstFunc)

////Responsability
	(set ResponsabilityClass "*RESPONSIBILITY")
	(set ResponsabilityInstances $ResponsabilityClass.$classClassInstFunc)	

////Team
	(set TeamClass "*TEAM")
	(set TeamInstances $TeamClass.$classClassInstFunc)

////Committee ( Team )
	(set CommitteeClass "COMMITTEE")
	(set CommitteeInstances $CommitteeClass.$classClassInstFunc)

////Competency Framework
	(set CFClass "COMPETENCY FRAMEWORK")
	(set CFInstances $CFClass.$classClassInstFunc)

////KPI
	(set KPIClass "*KEY PERFORMANCE INDICATOR")
	(set KPIInstances $KPIClass.$classClassInstFunc)

////Rule
	(set RuleClass "#RULE")
	(set RuleInstances $RuleClass.$classClassInstFunc)

////Policy
	(set PolicyClass "*POLICY")
	(set PolicyInstances $PolicyClass.$classClassInstFunc)

////Article
	(set ArticleClass "ARTICLE")
	(set ArticleInstances $ArticleClass.$classClassInstFunc)

////Paragraph
	(set PARAClass "PARA")
	(set PARAInstances $PARAClass.$classClassInstFunc)

////Event
    (set EventClass "&EVENT")
    (set EventInstances $EventClass.$classClassInstFunc)

////Processes Activity
    (set ProcessActivityClass "&PROCESS ACTIVITY")
    (set ProcessActivityInstances $processClass.$classClassInstFunc)

////SWIMLANE
    (set SwimlaneClass "&SWIMLANE")
    (set SwimlaneInstances $SwimlaneClass.$classClassInstFunc)

////ORGANIZATION
	(set OrganizationClass "*ORGANIZATION")
	(set OrganizationInstances $OrganizationClass.$classClassInstFunc)

////Business Process ( ProcessChart )
    (set BusinessProcessClass "*BUSINESS PROCESS")
    (set BusinessProcessInstances $BusinessProcessClass.$classClassInstFunc)

    (set SupportProcess "*SUPPORTING PROCESS")
    (set CoreProcess "*CORE PROCESS")
    (set GuideProcess "Governing Process")

////Business Capability ( CapabilityChart )
    (set BusinessCapabilityClass "BUSINESS CAPABILITY")
    (set BusinessCapabilityInstances $BusinessCapabilityClass.$classClassInstFunc)
    
////OBJECTIVE ( MainStrategyChart , ObjectiveChart )
    (set ObjectiveClass "*OBJECTIVE")
    (set ObjectiveInstances $ObjectiveClass.$classClassInstFunc)

////Competency
	(set CompetencyClass "COMPETENCY")
	(set CompetencyInstances $CompetencyClass.$classClassInstFunc)

////Law
	(set LawClass "LAW")
	(set LawInstances $LawClass.$classClassInstFunc)	

]]