[[
    ////Application
    
    (set owner_func "*CAPABILITY::owner")
    (set developedBy_func "*SOFTWARE MODULE::Developed by")
    (set apptechnicalname_func "*APPLICATION::Technical name")
    (set appCategory_func "*APPLICATION::application category")
    (set appUI_func "*APPLICATION::application user interface")
    (set appDevMethod_func "*APPLICATION::development method")
    (set appProgLang_func "*SOFTWARE MODULE::programming languages")
    (set appDeployment_func "*APPLICATION::application deployments")
    (set appDepVersion_func "*APPLICATION DEPLOYMENT::deployed version")
    (set appVersion_func $appDeployment_func.$appDepVersion_func)
    (set devDate_func "*APPLICATION::Development Year")
    (set depDate "*APPLICATION DEPLOYMENT::start date")
    (set endDate "*APPLICATION DEPLOYMENT::end date")
    (set depDate_func $appDeployment_func.$depDate)
    (set endDate_func $appDeployment_func.$endDate)
    
    (set purchase_func "*ENTERPRISE RESOURCE::purchase cost")
    
    (set maintenance_func "*ENTERPRISE RESOURCE::Maintenance Cost")
    

    (set capabilitiesSupported_func "*ENTERPRISE RESOURCE::capabilities supported")


    (set serversAvailable_func "Cluster Server::composed of")
    (set segmentation_func "*ENTERPRISE RESOURCE::works with")
    
////KPI
    (set KPI_name_func "*KEY PERFORMANCE INDICATOR::#name")
    (set KPI_briefDescription_func "*KEY PERFORMANCE INDICATOR::briefDescription_fun")
	(set KPI_type_func "*KEY PERFORMANCE INDICATOR::kpi type")
	(set KPI_frequency_func "*KEY PERFORMANCE INDICATOR::frequency")
	(set KPI_information_source_func "*KEY PERFORMANCE INDICATOR::information source")
	(set KPI_Unit_func "*KEY PERFORMANCE INDICATOR::*unit")
    (set KPI_formula_func "*KEY PERFORMANCE INDICATOR::kpi formula")
    
    (set KPI_objective_func "*KEY PERFORMANCE INDICATOR::objectives/measured")
    (set super_KPI_func "*KEY PERFORMANCE INDICATOR::part of")
    (set sub_KPI_func "*KEY PERFORMANCE INDICATOR::kpi components")
    (set KPI_maxvalue_func "*KEY PERFORMANCE INDICATOR::maximum value")
    (set KPI_minvalue_func "*KEY PERFORMANCE INDICATOR::minimum value")
    (set KPI_weight_func "*KEY PERFORMANCE INDICATOR::kpi weight")
    (set KPI_observation_procedure_func "*KEY PERFORMANCE INDICATOR::kpi observation procedure")
    (set KPI_scope_func "*KEY PERFORMANCE INDICATOR::kpi coverage scope")
    (set KPI_measure_func "*KEY PERFORMANCE INDICATOR::measures")
    (set KPI_OTV_func "*KEY PERFORMANCE INDICATOR::target value")
    (set KPI_obs_func "*KEY PERFORMANCE INDICATOR::kpi observations")
    (set KPI_BV_func "*KEY PERFORMANCE INDICATOR::baseline value")

////DataStorage
    (set alias_func "*ENTERPRISE RESOURCE::alias")
    (set modelName_func "*ENTERPRISE RESOURCE::id")
    (set currImplementation "SOLUTION BUILDING BLOCK::current implementation")
    (set toBeImplemented "CURRENT IMPLEMENTATION::to be implemented")
    (set type_func $currImplementation.$toBeImplemented)
    
    (set OS_func "*COMPUTING PLATFORM::operating system")
    (set businessSeverity_func "*ENTERPRISE RESOURCE::business severity")
    (set performedAt_func "*CAPABILITY::performed at")
    (set IP_func "*NETWORK NODE::ip address")
    (set depDate_func2 "*ENTERPRISE RESOURCE::acquisition date")

 ////Entity
    (set supplier2_func "#MODEL CLASS::subject areas")
    (set seg1 "*INFORMATION::information in consumption")
    (set seg2 "*INFORMATION CONSUMPTION::Information consumer")
    (set segmentation_fun2 $seg1.$seg2)

////NETWORK
    
    (set supplier_func "*ENTERPRISE RESOURCE::resource supplier")
    
    (set OS_func2 "*NETWORK INTERCONNECTION DEVICE::*operating system")
    

////Security
    (set OS_func3 "*SOFTWARE MODULE::supporting computing platforms")


////Physical Server
    (set HostOf_func "Physical Server::Host of")
    (set serverType_func "*NETWORK SERVER::server types")
    (set installedOn_func "*COMPUTING PLATFORM::installed on")

////Services
    (set benif_func "*CAPABILITY::beneficiary")
    (set superService_func "SERVICE::super service")
    (set subService_func "SERVICE::sub service")
    (set extStakeHolders_func "*CAPABILITY::external stakeholders")
    (set intStakeHolders_func "*CAPABILITY::internal stakeholders")
    (set automation1 "SERVICE::provided by")
    (set automation2 "#BUSINESS ACTIVITY::automation level")
    (set automation_func $automation1.$automation2)
    (set channel_func "*CAPABILITY::process description.*ARCHITECTURE BUILDING BLOCK::client of architecture building block dependencies.*ARCHITECTURE BUILDING BLOCK DEPENDENCY::supplier architecture building block")
    (set externalSys_func "#NAMED ELEMENT::clientDependency.#DEPENDENCY::supplier")


////*STRATEGIC ELEMENT
    (set Mission_Principle_func "*STRATEGIC ELEMENT::guiding principles")


////Virtual Server
    (set servHosted_func "Virtual machine server::Hosted on")
    (set installedApp_func "*NETWORK HOST::software deployed")
    (set relatedVlan_func "*NETWORK::network elements")
    (set acronym_func "*ENTERPRISE RESOURCE::acronym")
    (set hardComp_func "*NETWORK HOST::hardware components")


////VLAN 
    (set VlanSupplier_func "*NETWORK::ip subnet address")
    


////ABB
    (set super_func "*ARCHITECTURE BUILDING BLOCK::parent architecture building block")
    (set children_func "*ARCHITECTURE BUILDING BLOCK::child architecture building blocks")
    (set classes_func "*ARCHITECTURE BUILDING BLOCK::building block classification")
    (set severity_func "*ARCHITECTURE BUILDING BLOCK::architecture building block severity")
    (set current_func "*ARCHITECTURE BUILDING BLOCK::current implementation.CURRENT IMPLEMENTATION::product for current implementation")
    (set future_func "*ARCHITECTURE BUILDING BLOCK::future direction.FUTURE DIRECTION::Product for future direction")
    (set GapIdent_func "*ARCHITECTURE BUILDING BLOCK::gap identification")
    (set GapAnalysis_func "*ARCHITECTURE BUILDING BLOCK::gap analysis")
    (set DependAffect_func "*ARCHITECTURE BUILDING BLOCK::client of architecture building block dependencies.*ARCHITECTURE BUILDING BLOCK DEPENDENCY::supplier architecture building block")
    (set DependOn_func "*ARCHITECTURE BUILDING BLOCK::supplier of architecture building block dependencies.*ARCHITECTURE BUILDING BLOCK DEPENDENCY::client architecture building block")
    

////AbstractPool
    (set activity_func "&ABSTRACT POOL::represents")
    (set participant_func "&POOL::parent participant")
    (set communication_func "&ABSTRACT POOL::ABSTRACT POOLAllMessages")
    (set target_func "&MESSAGE FLOW SOURCE::outgoing message flows.&MESSAGE FLOW::message flow target")
    (set source_func "&MESSAGE FLOW TARGET::incoming message flows.&MESSAGE FLOW::message flow source")

////*ACCOUNTABLE PARTY
    (set parent_org_func "*ACCOUNTABLE PARTY::supervisors")
    (set sub_org_func "*ACCOUNTABLE PARTY::subordinates")
    (set owned_activities_func "*ACCOUNTABLE PARTY::capabilities owned")
	(set stakeholders_activities_func "*ACCOUNTABLE PARTY::capabilities involved in")    
    (set acc_party_vision_func "*ACCOUNTABLE PARTY::visions")
    (set Org_BrandValues_func "*ACCOUNTABLE PARTY::values")
    (set Org_Mission_func "*ACCOUNTABLE PARTY::mission")
    (set Org_Principle_func "*ACCOUNTABLE PARTY::guiding principles")
    (set OutSourcing_func "*ACCOUNTABLE PARTY::Outsourcing Organization")
    (set AP_Objectives_func "*ACCOUNTABLE PARTY::objectives")




////Activity
    (set activity_resources_func "#BUSINESS ACTIVITY::ACTIVITY/resources")
    (set activity_result_func "#BUSINESS ACTIVITY::ACTIVITY/result")
    
    (set DiagContaining_func "#DIAGRAM::#contains")
    (set superActivity_func "#OBJECT::#contained_in.#WORK PRODUCT::describe")
    (set Policies_func "#BUSINESS ACTIVITY::governed by")
    (set Rules_func "#BUSINESS ACTIVITY::guided by")


////Article
    (set Statement_func "LEGAL ELEMENT::Statement") 
    (set Laws_func "LEGAL ELEMENT::law")
    (set Paraghraphs_func "ARTICLE::para")
    (set Clauses_func "PARA::clause")
    (set sections_func "Article::section")

////PARA
    (set Article_func "PARA::article")


////Barrier
    (set Barrier_strategy_func "*BARRIER::strategies impeded")

////BrandPillar
    (set PillarProofPts_func "BRAND PILLAR::band proof points") 
    (set PillarNeeds_func "BRAND PILLAR::brand needs")

////BrandService
    (set RequiredFiles_func "SERVICE::required__files")
    (set Fees_func "SERVICE::fee")
    (set Brands_func "SERVICE::*organization")

////BusineessUnit
    (set head_pos_func "*ORGANIZATION::Head Position")
    (set vice_pos_func "*ORGANIZATION::Vice Position")
    (set Org_positions_func "*ORGANIZATION::positions")
    (set Section_Activities  "ORGANIZATIONAL UNIT::Organization__process")
    (set Section_Services  "*ACCOUNTABLE PARTY::capabilities owned.SERVICE")
    

////&FLOW OBJECT
    (set cancel_triglane_func "&FLOW OBJECT::located in")

////CF
    (set competencies_func "COMPETENCY FRAMEWORK::competencies")
    (set levels_func "COMPETENCY::leveled competency")

////Chapter
    (set superChap_func "Chapter::superchapter")
    (set subChap_func "Chapter::subchapter")
    (set articles_func "Chapter::article")
    (set LegalDoc_func "Article::legal document")

////CheckMultiAnchor
    (set anch_diagrams_func "#OBJECT::OBJECT All Anchored Diagrams")

////Clause
    (set targets $clause.Clause::affects)
    (set docsRefers_func "Clause::Refers To")
    (set clauseRefers_func "Clause::refers To")
    (set docsReferredBy_func "Clause::Refered by")
    (set clauseReferredBy_func "Clause::refered By")

////Compensation
    (set Compensation_Event_func "&COMPENSATION ACTIVITY::triggered by")
    (set Compensation_Triglane_func $Compensation_Event_func.$cancel_triglane_func)
    
    (set compensation_task_func "&COMPENSATION EVENT::compensation activity")

////CompetencyLevel
    (set Proofs_func "LEVELED COMPETENCY::proof points")
	(set evidence_list_func "LEVELED COMPETENCY::evidence")
    (set Family_func "LEVELED COMPETENCY::required for position family")
	(set roles_func "LEVELED COMPETENCY::assigned on role")


////POSTION FAMILY
    (set positions_func "POSITION FAMILY::contain")
	(set teams_func "POSITION FAMILY::contain team")
    (set PosResp_func "POSITION FAMILY::has responsibility")
    (set PF_super_func "POSITION FAMILY::Position Family Super Position Families")
    (set PF_Resp_func "POSITION FAMILY::has responsibility")
    (set Drop_Resp_func "POSITION FAMILY::drop responsibility")

////CULTURE ELEMENT
    (set CI_List_func "Culture Element::impliedBy")

////*ORGRANIZATION


////*POSITION
    (set headpos_func "*POSITION::Head For")
	(set vicepos_func "*POSITION::vice position for")
    (set pos_org_unit_func "*POSITION::organization")
    (set pos_belong_func "*POSITION::belong")

////#CONTEXT
    (set CFW_diagrams_func "#CONTEXT::diagram types.DIAGRAM TYPE::#diagrams")
    (set NoConDiags_func "#CLASS::CLASS/instances not in a context")

////&MESSAGE FLOW
    (set end_flow_func "&MESSAGE FLOW SOURCE::outgoing message flows")
    (set end_msg_func "&MESSAGE FLOW::transmits")
    (set msg_sender_func "&MESSAGE FLOW::message flow target")

////&ERROR EVENT
    (set error_code_func "&ERROR EVENT::error code")

////*BUSINESS DRIVER
    (set judged_in_func "*BUSINESS DRIVER::judged in")

////*GOAL
(set Goal_SDestination_func  "*GOAL::strategic destination")

////STRATEGIC DESTINATION


////*OBSERVATION
    (set OTV_enumvalue_func "*OBSERVATION::enumerated value")
    (set OTV_qtvalue_func "*OBSERVATION::quantity")
    (set OTV_unit_func "*OBSERVATION::unit")
    (set obs_obs_func "*OBSERVATION::observer")
    (set obs_obstime_func "*OBSERVATION::time record")
    (set obs_obstype_func "*OBSERVATION::observation type")
    (set obs_start_func "*OBSERVATION::start date-time")
    (set obs_end_func "*OBSERVATION::end date-time")

////*REQUIREMENT
    (set objectives_driven_func "*REQUIREMENT::objectives driven")
    (set req_objects_func "*REQUIREMENT::requirement objects")
    (set proj_func "*REQUIREMENT::projects")

////&MESSAGE FLOW
    (set inc_msg_func "&MESSAGE FLOW TARGET::incoming message flows")
    (set out_msg_func "&MESSAGE FLOW SOURCE::outgoing message flows")
    (set transmit_func "&MESSAGE FLOW::transmits")
    (set msg_flow_source_func "&MESSAGE FLOW::message flow source")
    (set msg_flow_target_func "&MESSAGE FLOW::message flow target")

////&MESSAGE EVENT
    (set msg_name_func "&MESSAGE EVENT::message" )

////&LANE
    (set related_pool_func "&LANE::parent__pool")
    (set lane_contains_func "&LANE::contains")

////LAW
    (set leg_element_func "LAW::legal element")
    (set Policies_func "LAW::acted by")

////Legal Document
(set issueDate_func "Legal Document::legal_document_issue_date")
(set publishDate_func "Legal Document::legal_document_publish_date")
(set docReplace_func "Legal Document::subrogate")
(set docsReplacedBy_func "Legal Document::subrogated by")
(set signers_func "Legal Document::legal_document_signer")
(set LD_docsRefers_func "Legal Document::refers to")
(set LD_clauseRefers_func "Legal Document::Refers to")

(set LD_docsReferredBy_func "Legal Document::refered by")
(set LD_clauseReferredBy_func "Legal Document::Refered by")

////OBJECT
    (set immed_class_func "OBJECT/immediate classification")
    (set name_func "#OBJECT::#name")
    (set Title_func "#OBJECT::Title")
    (set briefDescription_func "#OBJECT::briefDescription")
    (set briefDescription_func2 "#OBJECT::#ownedComment")
    (set type_func2 "#OBJECT::OBJECT/immediate classification")
    (set description_func "#OBJECT::#description")
    (set SubDiag_func "#OBJECT::describedBy")
    (set obj_doc_func "#OBJECT::#document")

////&STANDARD LOOP
    (set recurrence_nb_func "&STANDARD LOOP::loop maximum")
    (set condition_func "&STANDARD LOOP::loop condition")

////&DATA
    (set data_inp_func "&DATA INPUT::required data")
    (set data_out_func "&DATA OUTPUT::produced data")

////&PROCESS ACTIVITY
    (set data_consump_func "&PROCESS ACTIVITY::data of consumption")
    (set data_prodction_func "&PROCESS ACTIVITY::data in production")
    (set attaches_func "&PROCESS__ACTIVITY::attaches")

////&SEQUENCE FLOW ...
    (set Previous_func "&SEQUENCE FLOW TARGET::incoming sequence flows.&SEQUENCE FLOW::sequence flow source") 
    (set Follows_func "&SEQUENCE FLOW SOURCE::outgoing sequence flows.&SEQUENCE FLOW::sequence flow target")

////*MISSION
    (set Mission_Org_func "*MISSION::organization entities")
    (set Mission_Vision_func "*MISSION::visions")
    (set Sub_Mission_func "*MISSION::submission")
    (set Super_Mission_func "*MISSION::main mission")

////&MULTI INSTANCE LOOP
    (set Multiple_Condition_func "&MULTI INSTANCE LOOP::multi instance condition")

////*OBJECTIVE
    (set Obj_SuppGoal_func "*OBJECTIVE::supportedGoals")
    (set Obj_Persp_func "*OBJECTIVE::belongs to")
    (set Obj_Themes_func "*OBJECTIVE::theme")
    (set Obj_Affected_func "*OBJECTIVE::affects")
    (set Obj_AffectedBy_func "*OBJECTIVE::affected by")
    (set Objective_Initiative_func "*OBJECTIVE::requirements realized")
    (set Objective_Initiative2_func "#OBJECT::object requirements")

////THEME
    (set PTheme_SM_func "THEME::strategy map")
    (set PTheme_Obj_func "THEME::*objective")


////PERSPECTIVE
(set perspective_targetYear_func "PERSPECTIVE::strategy map.STRATEGY MAP::target year")
(set Persp_SM_func "PERSPECTIVE::strategy map")
(set Persp_PerspTheme_func "PERSPECTIVE::includes")
(set Persp_Objective_func "PERSPECTIVE::involves")
(set PersTheme_Persp_func "PERSPECTIVE THEME::belongs to")


////DESIRED result
    (set Objective_Tactic_func "DESIRED_RESULT::supported by")

////*ORGANIZATION
    (set Org_Essence_func "*ORGANIZATION::essence")
    (set Org_BrandServ_func "*ORGANIZATION::services")
    (set culture_func "*ORGANIZATION::Live")


////BRAND
    (set Org_History_func "BRAND::history")
    (set Org_USP_func "BRAND::unique selling proposition")
    (set Org_Promise_func "BRAND::brand promise")
    (set Org_BrandPos_func "BRAND::brand positioning")
    (set Org_WinTheme_func "BRAND::winning theme")
    (set Org_BrandPillars_func "BRAND::brand pillar")
    (set Org_BrandPerson_func "BRAND::brand personality")

////VISION
    (set Org_Destination_func "*VISION::supported strategic destination")

////*POLICY
    (set Pol_Laws_func "*POLICY::act for")
    (set Pol_Rules_func "*POLICY::basis for")
    (set Pol_Activities_func "*POLICY::governs")  

////*RESPONSIBILITY
    (set RespRoles_func "*RESPONSIBILITY::roles")
    (set RespRoles2_func "*RESPONSIBILITY::activity role.ACTIVITY ROLE::defined roles")

////*POSITION
    (set pos_compt_func "*POSITION::POSITION all Competencies")
    (set positionlevCom_func "*POSITION::required leveled competency")
    (set pos_per_func "*POSITION::employees filling position")

////&PRIVATE POOL
    (set PP_activity_func "&PRIVATE POOL::realized business activity")
    (set PP_participant_func "&POOL::parent participant")
    (set PP_laneList_func "&PRIVATE POOL::lanes")

////*PROJECT
    (set projectID_func "*PROJECT::project id")
    (set cost_func "*PROJECT::cost")
    (set startDate_func "*PROJECT::start date")
    (set compDate_func "*PROJECT::completion date")
    (set requirements_func "*PROJECT::requirement")
    (set scope_func "*PROJECT::scope")
    (set RespDep_func "*PROJECT::Responsible Org Unit") 
    (set PartDep_func "*PROJECT::Participant Org Unit")
    (set PartGovAgencies_func "*PROJECT::govern")
    (set services_func "*PROJECT::service")
    (set Risks_func "*PROJECT::risk")

////*PROJECT TASK
    (set PT_Project_weight_func "*PROJECT TASK::Weight")
    (set PT_Duration_func "*PROJECT TASK::duration")
    (set PT_StartDate_func "*PROJECT TASK::start date")
    (set PT_EndDate_func "*PROJECT TASK::completion date")


////QUERRY
    (set product_produc_act_func "QUERRY::PRODUCT/producing__activity")
    (set product_consum_act_func "QUERRY::PRODUCT/consuming__activities")
]]