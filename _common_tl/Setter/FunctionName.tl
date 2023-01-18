[[

////public functions            ( Charts )
    (set classInstFunc          "#CLASS::CLASS/instances")

////CheckMultiAnchor
    (set anch_diagrams_func     "#OBJECT::OBJECT All Anchored Diagrams")

////#CONTEXT                    ( common diagram files )
    (set ctxDiagTypeDiagFunc    "#CONTEXT::diagram types.DIAGRAM TYPE::#diagrams")
    (set classInstNoCtxFunc     "#CLASS::CLASS/instances not in a context")

////OBJECT
    (set objImmClassFunc        "OBJECT/immediate classification")
    (set objObjImmClassFunc     "#OBJECT::OBJECT/immediate classification")
    (set objNameFunc            "#OBJECT::#name")
    (set objTitleFunc           "#OBJECT::Title")
    (set objDescFunc            "#OBJECT::#description")
    (set objBriefDescFunc       "#OBJECT::briefDescription")
    (set objOwnedCommentFunc    "#OBJECT::#ownedComment")
    (set objDescByFunc          "#OBJECT::describedBy")
    (set objDocFunc             "#OBJECT::#document")

////Application                 ( used in : ApplicationChart, CapabilityChart )
    (set appTechNameFunc        "*APPLICATION::Technical name")
    (set appCatFunc             "*APPLICATION::application category")
    (set appUIFunc              "*APPLICATION::application user interface")
    (set appDeplFunc            "*APPLICATION::application deployments")
    (set appDevMethodFunc       "*APPLICATION::development method")
    (set appDevYearFunc         "*APPLICATION::Development Year")
    (set appDeplVerFunc         "*APPLICATION DEPLOYMENT::deployed version")
    (set appDeplStartFunc       "*APPLICATION DEPLOYMENT::start date")
    (set appDeplEndFunc         "*APPLICATION DEPLOYMENT::end date")
    (set softwaredevByFunc      "*SOFTWARE MODULE::Developed by")
    (set softwareProgLangFunc   "*SOFTWARE MODULE::programming languages")
    (set capOwnerFunc           "*CAPABILITY::owner")
    (set entPurchaseCostFunc    "*ENTERPRISE RESOURCE::purchase cost")
    (set entMaintenanceCostFunc "*ENTERPRISE RESOURCE::Maintenance Cost")
    (set entCapSupportFunc      "*ENTERPRISE RESOURCE::capabilities supported")
    (set entWorksWithFunc       "*ENTERPRISE RESOURCE::works with")
    (set clustServCompFunc      "Cluster Server::composed of")
    (set appVerFunc             $appDeplFunc.$appDeplVerFunc)
    (set deplStartFunc          $appDeplFunc.$appDeplStartFunc)
    (set deplEndFunc            $appDeplFunc.$appDeplEndFunc)
    
    
////KPI
    (set KPINameFunc            "*KEY PERFORMANCE INDICATOR::#name")
    (set KPIBriefDescFunc       "*KEY PERFORMANCE INDICATOR::briefDescription_fun")
	(set KPITypeFunc            "*KEY PERFORMANCE INDICATOR::kpi type")
	(set KPIFreqFunc            "*KEY PERFORMANCE INDICATOR::frequency")
	(set KPIInfoSrcFunc         "*KEY PERFORMANCE INDICATOR::information source")
	(set KPIUnitFunc            "*KEY PERFORMANCE INDICATOR::*unit")
    (set KPIFormulaFunc         "*KEY PERFORMANCE INDICATOR::kpi formula")
    (set KPIObjvFunc            "*KEY PERFORMANCE INDICATOR::objectives/measured")
    (set KPISupFunc             "*KEY PERFORMANCE INDICATOR::part of")
    (set KPISubFunc             "*KEY PERFORMANCE INDICATOR::kpi components")
    (set KPIMaxValFunc          "*KEY PERFORMANCE INDICATOR::maximum value")
    (set KPIMinValFunc          "*KEY PERFORMANCE INDICATOR::minimum value")
    (set KPIWeightFunc          "*KEY PERFORMANCE INDICATOR::kpi weight")
    (set KPIObsProcedFunc       "*KEY PERFORMANCE INDICATOR::kpi observation procedure")
    (set KPIScopeFunc           "*KEY PERFORMANCE INDICATOR::kpi coverage scope")
    (set KPIMeasureFunc         "*KEY PERFORMANCE INDICATOR::measures")
    (set KPITargetValFunc       "*KEY PERFORMANCE INDICATOR::target value")
    (set KPIObsFunc             "*KEY PERFORMANCE INDICATOR::kpi observations")
    (set KPIBaselineValFunc     "*KEY PERFORMANCE INDICATOR::baseline value")
    
////DataStorage
    (set entAliasFunc           "*ENTERPRISE RESOURCE::alias")
    (set entIDFunc              "*ENTERPRISE RESOURCE::id")
    (set entBusSevFunc          "*ENTERPRISE RESOURCE::business severity")
    (set entAcqDateFunc         "*ENTERPRISE RESOURCE::acquisition date")
    (set SBBCurrImpFunc         "SOLUTION BUILDING BLOCK::current implementation")
    (set currImpToBeImpFunc     "CURRENT IMPLEMENTATION::to be implemented")
    (set compPlatOSFunc         "*COMPUTING PLATFORM::operating system")
    (set capPerformedAtFunc     "*CAPABILITY::performed at")
    (set networkNodeIPFunc      "*NETWORK NODE::ip address")
    (set SBBCurrImpToBeImpFunc  $SBBCurrImpFunc.$currImpToBeImpFunc)

////Entity
    (set mClassSubjAreasFunc    "#MODEL CLASS::subject areas")
    (set infoInConsFunc         "*INFORMATION::information in consumption")
    (set infoConsumerFunc       "*INFORMATION CONSUMPTION::Information consumer")
    (set infoSegmentationFunc   $infoInConsFunc.$infoConsumerFunc)

////NETWORK
    (set entResSupplierFunc     "*ENTERPRISE RESOURCE::resource supplier")
    (set NIDOSFunc              "*NETWORK INTERCONNECTION DEVICE::*operating system")

////Security
    (set softwareOSPlatFunc     "*SOFTWARE MODULE::supporting computing platforms")

////Physical Server
    (set PhySerHostOfFunc       "Physical Server::Host of")
    (set networkServTypeFunc    "*NETWORK SERVER::server types")
    (set compPlatInstOnFunc     "*COMPUTING PLATFORM::installed on")

////Services
    (set capBenifFunc           "*CAPABILITY::beneficiary")
    (set capExtStakeHoldersFunc "*CAPABILITY::external stakeholders")
    (set capIntStakeHoldersFunc "*CAPABILITY::internal stakeholders")
    (set capprocessDescFunc     "*CAPABILITY::process description")
    (set ABBClientABBDependFunc "*ARCHITECTURE BUILDING BLOCK::client of architecture building block dependencies")
    (set ABBDependSuppABBFunc   "*ARCHITECTURE BUILDING BLOCK DEPENDENCY::supplier architecture building block")
    (set serSupSerFunc          "SERVICE::super service")
    (set serSubSerFunc          "SERVICE::sub service")
    (set serProvByFunc          "SERVICE::provided by")
    (set busActAutomLvlFunc     "#BUSINESS ACTIVITY::automation level")
    (set NEClientDependFunc     "#NAMED ELEMENT::clientDependency")
    (set dependSuppFunc         "#DEPENDENCY::supplier")
    (set NEClientSuppDependFunc $NEClientDependFunc.$dependSuppFunc)
    (set serProvAutomLvlFunc    $serProvByFunc.$busActAutomLvlFunc)
    (set ABBClientSuppFunc      $ABBClientABBDependFunc.$ABBDependSuppABBFunc)
    (set capABBClientSuppFunc   $capprocessDescFunc.$ABBClientSuppFunc)

////*STRATEGIC ELEMENT
    (set stratElmGuidPrincFunc  "*STRATEGIC ELEMENT::guiding principles")

////Virtual Machine Server
    (set VMservHostOnFunc       "Virtual machine server::Hosted on")
    (set NHSoftwareDeplFunc     "*NETWORK HOST::software deployed")
    (set networkElmFunc         "*NETWORK::network elements")
    (set entAcronymFunc         "*ENTERPRISE RESOURCE::acronym")
    (set NHHardwareCompFunc     "*NETWORK HOST::hardware components")

////VLAN 
    (set networkSubIPFunc       "*NETWORK::ip subnet address")

////ABB
    (set ABBParFunc          "*ARCHITECTURE BUILDING BLOCK::parent architecture building block")
    (set ABBChildFunc           "*ARCHITECTURE BUILDING BLOCK::child architecture building blocks")
    (set ABBClassificatinFunc   "*ARCHITECTURE BUILDING BLOCK::building block classification")
    (set ABBSeverityFunc        "*ARCHITECTURE BUILDING BLOCK::architecture building block severity")
    (set ABBCurrImpFunc         "*ARCHITECTURE BUILDING BLOCK::current implementation")
    (set ABBFutDirFunc          "*ARCHITECTURE BUILDING BLOCK::future direction")
    (set currImpProdCurrImpFunc "CURRENT IMPLEMENTATION::product for current implementation")
    (set futDirProdFutDirFunc   "FUTURE DIRECTION::Product for future direction")
    (set ABBGapIdFunc           "*ARCHITECTURE BUILDING BLOCK::gap identification")
    (set ABBGapAnalysisFunc     "*ARCHITECTURE BUILDING BLOCK::gap analysis")
    (set ABBSuppABBDependFunc   "*ARCHITECTURE BUILDING BLOCK::supplier of architecture building block dependencies")
    (set ABBDependClientABBFunc "*ARCHITECTURE BUILDING BLOCK DEPENDENCY::client architecture building block")
    (set ABBCurrImpProdFunc     $ABBCurrImpFunc.$currImpProdCurrImpFunc)
    (set ABBFutDirProdFunc      $ABBFutDirFunc.$futDirProdFutDirFunc)
    (set capABBSuppClientFunc   $ABBSuppABBDependFunc.$ABBDependClientABBFunc)
    //// capABBClientSuppFunc   is defined in the services section

////AbstractPool
    (set abstPoolRepFunc        "&ABSTRACT POOL::represents")
    (set abstPoolAllMsgFunc     "&ABSTRACT POOL::ABSTRACT POOLAllMessages")
    (set poolParPartFunc        "&POOL::parent participant")
    (set msgFlwSrcOutFunc       "&MESSAGE FLOW SOURCE::outgoing message flows")
    (set msgFlwTargetInFunc     "&MESSAGE FLOW TARGET::incoming message flows")
    (set msgFlwTargetFunc       "&MESSAGE FLOW::message flow target")
    (set msgFlwSrcFunc          "&MESSAGE FLOW::message flow source")
    (set msgFlwSrcOutTargetFunc $msgFlwSrcOutFunc.$msgFlwTargetFunc)
    (set msgFlwTargetInSrcFunc  $msgFlwTargetInFunc.$msgFlwSrcFunc)

////&MESSAGE FLOW
    (set msgFlwTransmitsFunc    "&MESSAGE FLOW::transmits")
    
////*ACCOUNTABLE PARTY
    (set accPartySupervFunc     "*ACCOUNTABLE PARTY::supervisors")
    (set accPartySubordFunc     "*ACCOUNTABLE PARTY::subordinates")
    (set accPartyCapOwnedFunc   "*ACCOUNTABLE PARTY::capabilities owned")
	(set accPartyCapInvFunc     "*ACCOUNTABLE PARTY::capabilities involved in")    
    (set accPartyVisFunc        "*ACCOUNTABLE PARTY::visions")
    (set accPartyValFunc        "*ACCOUNTABLE PARTY::values")
    (set accPartyMissionFunc    "*ACCOUNTABLE PARTY::mission")
    (set accPartyGuidPrincFunc  "*ACCOUNTABLE PARTY::guiding principles")
    (set accPartyOutSrcOrgFunc  "*ACCOUNTABLE PARTY::Outsourcing Organization")
    (set accPartyObjvFunc        "*ACCOUNTABLE PARTY::objectives")
    (set accPartySerOwnedFunc   "*ACCOUNTABLE PARTY::Services owned")

////Activity
    (set busActResFunc          "#BUSINESS ACTIVITY::ACTIVITY/resources")
    (set busActRsltFunc         "#BUSINESS ACTIVITY::ACTIVITY/result")
    (set busActGovByFunc        "#BUSINESS ACTIVITY::governed by")
    (set busActGuidByFunc       "#BUSINESS ACTIVITY::guided by")
    (set DiagContFunc           "#DIAGRAM::#contains")
    (set objContInFunc          "#OBJECT::#contained_in")
    (set workProdDescFunc       "#WORK PRODUCT::describe")
    (set objworkProdDescFunc    $objContInFunc.$workProdDescFunc)

////Article
    (set lglElmStatementFunc    "LEGAL ELEMENT::Statement") 
    (set lglElmLawsFunc         "LEGAL ELEMENT::law")
    (set artParaFunc            "ARTICLE::para")
    (set artSectFunc            "Article::section")
    (set paraClauseFunc         "PARA::clause")

////PARA
    (set paraArtFunc             "PARA::article")

////Barrier
    (set barStratimpededFunc    "*BARRIER::strategies impeded")

////BrandPillar
    (set BPBandProofPntFunc     "BRAND PILLAR::band proof points") 
    (set BPBandNeedFunc         "BRAND PILLAR::brand needs")

////BrandService
    (set serReqFilesFunc        "SERVICE::required__files")
    (set serFeesFunc            "SERVICE::fee")
    (set serOrgFunc             "SERVICE::*organization")

////BusineessUnit
    (set orgHeadPosFunc         "*ORGANIZATION::Head Position")
    (set orgVicePosFunc         "*ORGANIZATION::Vice Position")
    (set orgPosFunc             "*ORGANIZATION::positions")
    (set accPartyOrgProcessFunc "*ACCOUNTABLE PARTY::Organization process")

////(set Section_Activities     "ORGANIZATIONAL UNIT::Organization__process")
////(set Section_Services       "*ACCOUNTABLE PARTY::capabilities owned.SERVICE")
////(set Section_Services       $accPartyCapOwnedFunc.$ServiceClass)


////CFW                         ( COMPETENCY FRAMEWORK )
    (set CFWCmptFunc            "COMPETENCY FRAMEWORK::competencies")
    (set cmptLvlCmptFunc        "COMPETENCY::leveled competency")

////Chapter
    (set chapSupFunc            "Chapter::superchapter")
    (set chapSubFunc            "Chapter::subchapter")
    (set chapArtFunc            "Chapter::article")
    (set artLglDocFunc          "Article::legal document")

////Clause
    ////cant find clause class refers to func or refered by  ( maybe legal document idk )
    (set clauseRefTo1Func       "Clause::Refers To")
    (set clauseRefTo2Func       "Clause::refers To")
    (set clauseRefBy1Func       "Clause::Refered by")
    (set clauseRefBy2Func       "Clause::refered By")
    (set clauseAffectsFunc      "Clause::affects")
    (set targets                $clause.$clauseAffectsFunc)

////&FLOW OBJECT
    (set flwObjLocInFunc        "&FLOW OBJECT::located in")

////Compensation
    (set cmpnActTrigByFunc      "&COMPENSATION ACTIVITY::triggered by")
    (set cmpnEventActFunc       "&COMPENSATION EVENT::compensation activity")
    (set cmpnTrigLocInFunc      $cmpnActTrigByFunc.$flwObjLocInFunc)

////CompetencyLevel
    (set lvlCmptProofPntFunc    "LEVELED COMPETENCY::proof points")
	(set lvlCmptEvidenceFunc    "LEVELED COMPETENCY::evidence")
    (set lvlCmptReqPosFamFunc   "LEVELED COMPETENCY::required for position family")
	(set lvlCmptAssignRoleFunc  "LEVELED COMPETENCY::assigned on role")

////POSTION FAMILY
    (set posFamContFunc         "POSITION FAMILY::contain")
	(set posFamContTeamFunc     "POSITION FAMILY::contain team")
    (set posFamHasRespFunc      "POSITION FAMILY::has responsibility")
    (set posFamSupFunc          "POSITION FAMILY::Position Family Super Position Families")
    (set posFamDropRespFunc     "POSITION FAMILY::drop responsibility")

////CULTURE ELEMENT
    (set cultElmImpliedByFunc   "Culture Element::impliedBy")

////*ORGRANIZATION

////*POSITION
    (set posHeadForFunc         "*POSITION::Head For")
	(set posViceForFunc         "*POSITION::vice position for")
    (set posOrgFunc             "*POSITION::organization")
    (set posBelongFunc          "*POSITION::belong")

////&ERROR EVENT
    (set errorEventCodeFunc     "&ERROR EVENT::error code")

////*BUSINESS DRIVER
    (set busDriverjudgedinFunc  "*BUSINESS DRIVER::judged in")

////*GOAL
    (set goalStratDestFunc      "*GOAL::strategic destination")

////STRATEGIC DESTINATION

////*OBSERVATION
    (set obsEnumValFunc         "*OBSERVATION::enumerated value")
    (set obsquantFunc           "*OBSERVATION::quantity")
    (set obsUnitFunc            "*OBSERVATION::unit")
    (set obsObsFunc             "*OBSERVATION::observer")
    (set obsTimeRecFunc         "*OBSERVATION::time record")
    (set obsObsTypeFunc         "*OBSERVATION::observation type")
    (set obsStartDateTimeFunc   "*OBSERVATION::start date-time")
    (set obsEndDateTimeFunc     "*OBSERVATION::end date-time")

////*REQUIREMENT
    (set reqObjvDrivenFunc       "*REQUIREMENT::objectives driven")
    (set reqReqObjFunc          "*REQUIREMENT::requirement objects")
    (set reqProjFunc            "*REQUIREMENT::projects")


////&MESSAGE EVENT
    (set msgEventMsgFunc        "&MESSAGE EVENT::message" )

////&LANE
    (set laneParPoolFunc        "&LANE::parent__pool")
    (set laneContFunc           "&LANE::contains")

////LAW
    (set lawLglElmFunc          "LAW::legal element")
    (set lawActedByFunc         "LAW::acted by")

////Legal Document
    (set lglDocIssueDateFunc    "Legal Document::legal_document_issue_date")
    (set lglDocPublishDateFunc  "Legal Document::legal_document_publish_date")
    (set lglDocSubrogateFunc    "Legal Document::subrogate")
    (set lglDocSubrogateByFunc  "Legal Document::subrogated by")
    (set lglDocSignerFunc       "Legal Document::legal_document_signer")
    (set lglDocRefTo1Func       "Legal Document::Refers to")
    (set lglDocRefTo2Func       "Legal Document::refers to")
    (set lglDocRefBy1Func       "Legal Document::Refered by")
    (set lglDocRefBy2Func       "Legal Document::refered by")

////&STANDARD LOOP
    (set stdLoopMaxFunc         "&STANDARD LOOP::loop maximum")
    (set stdLoopCondFunc        "&STANDARD LOOP::loop condition")

////&MULTI INSTANCE LOOP
    (set MultiInstLoopCondFunc "&MULTI INSTANCE LOOP::multi instance condition")

////&DATA
    (set dataInputReqDataFunc   "&DATA INPUT::required data")
    (set dataOutputReqDataFunc  "&DATA OUTPUT::produced data")

////&PROCESS ACTIVITY
    (set processActDataConsFunc "&PROCESS ACTIVITY::data of consumption")
    (set processActDataProdFunc "&PROCESS ACTIVITY::data in production")
    (set processActAttachFunc   "&PROCESS ACTIVITY::attaches")

////&SEQUENCE FLOW ...

    (set seqFlwTargetInFunc     "&SEQUENCE FLOW TARGET::incoming sequence flows")
    (set seqFlwSrcFunc          "&SEQUENCE FLOW::sequence flow source")
    (set seqFlwSrcOutFunc       "&SEQUENCE FLOW SOURCE::outgoing sequence flows")
    (set seqFlwTargetFunc       "&SEQUENCE FLOW::sequence flow target")
    (set seqFlwTargetInSrcFunc  $seqFlwTargetInFunc.$seqFlwSrcFunc) 
    (set seqFlwSrcOutTargetFunc $seqFlwSrcOutFunc.$seqFlwTargetFunc)

////*MISSION
    (set missionOrgEttFunc      "*MISSION::organization entities")
    (set missionVisFunc         "*MISSION::visions")
    (set missionSubMissionFunc  "*MISSION::submission")
    (set missionMainMissionFunc "*MISSION::main mission")

////*OBJECTIVE
    (set objvSuppGoalFunc       "*OBJECTIVE::supportedGoals")
    (set objvBelongsFunc      "*OBJECTIVE::belongs to")
    (set objvThemeFunc          "*OBJECTIVE::theme")
    (set ObjvAffectFunc         "*OBJECTIVE::affects")
    (set ObjvAffectByFunc       "*OBJECTIVE::affected by")
    (set ObjvReqRealFunc        "*OBJECTIVE::requirements realized")
    (set objObjReqFunc          "#OBJECT::object requirements")

////THEME
    (set themeStratMapFunc      "THEME::strategy map")
    (set themeObjvFunc          "THEME::*objective")

////PERSPECTIVE
    (set perspStratMapFunc      "PERSPECTIVE::strategy map")
    (set perspIncFunc           "PERSPECTIVE::includes")
    (set perspObjvInvFunc       "PERSPECTIVE::involves")
    (set StratMapFuncTargetYear "STRATEGY MAP::target year")
    (set perspthemeBelongsFunc  "PERSPECTIVE THEME::belongs to")
    (set perspTargetYearFunc    $perspStratMapFunc.$StratMapFuncTargetYear)

////DESIRED result
    (set desiRsltSuppByFunc     "DESIRED_RESULT::supported by")

////*ORGANIZATION
    (set OrgEssenceFunc         "*ORGANIZATION::essence")
    (set OrgSerFunc             "*ORGANIZATION::services")
    (set OrgLiveFunc            "*ORGANIZATION::Live")

////BRAND
    (set brandHistFunc          "BRAND::history")
    (set brandUniqSellPropFunc  "BRAND::unique selling proposition")
    (set brandPromiseFunc       "BRAND::brand promise")
    (set brandPosFunc           "BRAND::brand positioning")
    (set brandWinThemeFunc      "BRAND::winning theme")
    (set brandBPFunc            "BRAND::brand pillar")
    (set brandBrandPersoFunc    "BRAND::brand personality")

////VISION
    (set visSuppStratDestFunc   "*VISION::supported strategic destination")

////*POLICY
    (set polActForFunc          "*POLICY::act for")
    (set polBasisForFunc        "*POLICY::basis for")
    (set polGovFunc             "*POLICY::governs")  

////*RESPONSIBILITY
    (set respRoleFunc           "*RESPONSIBILITY::roles")
    (set respActRoleFunc        "*RESPONSIBILITY::activity role")
    (set actRoleDefRoleFunc     "ACTIVITY ROLE::defined roles")
    (set respActRoleDefRoleFunc $respActRoleFunc.$actRoleDefRoleFunc)
////(set respActRoleDefRoleFunc "*RESPONSIBILITY::activity role.ACTIVITY ROLE::defined roles")

////*POSITION
    (set posAllCmptFunc         "*POSITION::POSITION all Competencies")
    (set posReqLvlCmptFunc      "*POSITION::required leveled competency")
    (set posEmpFillPosFunc      "*POSITION::employees filling position")

////&PRIVATE POOL
    (set privPoolRealBusActFunc "&PRIVATE POOL::realized business activity")
    (set privPoolLaneFunc       "&PRIVATE POOL::lanes")
    (set poolParPartFunc        "&POOL::parent participant")

////*PROJECT
    (set projIDFunc             "*PROJECT::project id")
    (set cost_func              "*PROJECT::cost")
    (set projStartDateFunc      "*PROJECT::start date")
    (set projEndDateFunc        "*PROJECT::completion date")
    (set projReqFunc            "*PROJECT::requirement")
    (set projScopeFunc          "*PROJECT::scope")
    (set projRespOrgUnitfunc    "*PROJECT::Responsible Org Unit") 
    (set projPartOrgUnitfunc    "*PROJECT::Participant Org Unit")
    (set projGovfunc            "*PROJECT::govern")
    (set projSerfunc            "*PROJECT::service")
    (set projRiskfunc           "*PROJECT::risk")

////*PROJECT TASK
    (set projTaskWeightFunc     "*PROJECT TASK::Weight")
    (set projTaskDurationFunc   "*PROJECT TASK::duration")
    (set projTaskStartDateFunc  "*PROJECT TASK::start date")
    (set projTaskEndDateFunc    "*PROJECT TASK::completion date")

]]
