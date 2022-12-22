[[
//// -------------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Information related to the Project like (Initiatives, Objectives).  
//// Loaded by ObjectsInfo.tl
//// Loads: TL/CORE/Page-name.tl, TL/CORE/SettingOutfilename.tl
//// Input variables: obj, img , description , empty 
//// -------------------------------------------------------------------------------------------------

////Name/ID/Description
(set project $obj)
(set project_ID $obj.$Title_func)
(set project_description $obj.$briefDescription_func)

////Related EA components
(set related_comp_func "*PROJECT::capabilities affected") ////
(set related_comp $obj.$related_comp_func)

////Owner
(set project_owner "*PROJECT::owner") ////
(set project_owner_func $obj.$project_owner)

////Cost
(set cost_func "*COST ELEMENT::costs") ////
(set cost_type "*COST::cost type") ////
(set cost $obj.$cost_func)
(set cost_of_type_func (intersection $cost $cost_type))
(set cost_of_type $obj.$cost_of_type_func)
(set cost_type_operation_inst (surrogate (sm-lookup "Operation" "*COST TYPE")))
(set cost_type_support_inst (surrogate (sm-lookup "Maintenance" "*COST TYPE")))
(set cost_type_license_inst (surrogate (sm-lookup "License" "*COST TYPE")))
(set cost_type_consultancy_inst (surrogate (sm-lookup "Consultancy" "*COST TYPE")))
(foreach __cost $obj.$cost_func (
	(set __cost_type_id (surrogate $__cost.$cost_type))
	(if (= $__cost_type_id $cost_type_operation_inst)
		( (set operation_cost $__cost) )
		( (if (= $__cost_type_id $cost_type_support_inst)
			  ( (set support_cost $__cost) )
			  ( (if (= $__cost_type_id $cost_type_license_inst)
				( (set license_cost $__cost) )
				( (if (= $__cost_type_id $cost_type_consultancy_inst)
					  ( (set consultancy_cost $__cost) )
					  ( (set total_cost $__cost) )
				))
			))
		))
	 )
))


////Date and duration
(set startDate $project.$startDate_func)
(set compDate $project.$compDate_func)
(set project_duration "*PROJECT::duration")
(set project_duration_func $obj.$project_duration)

////Objectives and KPIs
(set requirements_func "*PROJECT::requirements")////
(set req_objective "*REQUIREMENT::objectives driven")////
(set obj_kpi "*OBJECTIVE::*KEY PERFORMANCE INDICATOR")////
(set related_objective $obj.$requirements_func.$req_objective)
(set related_kpi_func $requirements_func.$req_objective.$obj_kpi)
(set related_kpi $project.*PROJECT::requirements.*REQUIREMENT::objectives__driven.*OBJECTIVE::key__performance__indicators)

////CSF
(set project_CSF "#MODEL ELEMENT::critical success factors")
(set project_CSF_func $obj.$project_CSF)

////Deliverables
(set project_deliverables "*PROJECT::outcome")
(set project_deliverables_func $obj.$project_deliverables)

//// Tasks
(set project_tasks "*PROJECT::tasks")
(set project_tasks_func $obj.$project_tasks)

////DEPENDENCY
(set project_dependency "*PROJECT::depend on")
(set project_dependency_func $obj.$project_dependency)

////Risk
(set capabilities_affected "*PROJECT::capabilities affected")
(set cap_risks "*CAPABILITY::resolved risks")
(set project_risk $project.$capabilities_affected.$cap_risks)
(set probability "*RISK ELEMENT::risk probability")
(set risk_probability $project_risk.$probability)
(set IMPACT_LEVEL "*RISK ELEMENT::impact level")
(set risk_IMPACT $project_risk.$IMPACT_LEVEL)
(set risk_strategy "*BARRIER::strategies impeded")
(set Project_risk_strategy $project_risk.$risk_strategy)



////old functions
(set scope $project.$scope_func)
(set RespDep $project.$RespDep_func) 
(set PartDep $project.$PartDep_func)
(set PartGovAgencies $project.$PartGovAgencies_func)
(set services $project.$services_func)
(set Risks $project.$Risks_func)
(set requirements $project.$requirements_func)

////
(set initiative_list (new-list))
(set Project_initiative $project.*PROJECT::requirements)

(foreach initiative $Project_initiative
	(
		(if (isa $initiative "*MANAGEMENT INITIATIVE")
			((set initiative_list(union $initiative_list $initiative)))
		)
	)
)
(set Project_objective $initiative_list.$objectives_driven_func)
(set Project_objective2 $initiative_list.$req_objects_func)
(set Project_objective3 $project.*ACCOUNTABLE__PARTY::objectives)
(set Project_objective (union $Project_objective $Project_objective2))
(set Project_objective (union $Project_objective $Project_objective3))
 (load "HTML/INFO/project.html")
]]