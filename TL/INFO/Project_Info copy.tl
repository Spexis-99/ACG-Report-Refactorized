[[
//// -------------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Information related to the Project like (Initiatives, Objectives).  
//// Loaded by ObjectsInfo.tl
//// Loads: TL/CORE/Page-name.tl, TL/CORE/SettingOutfilename.tl
//// Input variables: obj, img , description , empty 
//// -------------------------------------------------------------------------------------------------

(set project $obj)
(set projectID $project.$projectID_func)
(set cost $project.$cost_func)
(set startDate $project.$startDate_func)
(set compDate $project.$compDate_func)
(set requirements $project.$requirements_func)
(set scope $project.$scope_func)
(set RespDep $project.$RespDep_func) 
(set PartDep $project.$PartDep_func)
(set PartGovAgencies $project.$PartGovAgencies_func)
(set services $project.$services_func)
(set Risks $project.$Risks_func)

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
]]