[[
//// -------------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Information related to the Project like (Initiatives, Objectives).  
//// Loaded by ObjectsInfo.tl
//// Loads: _common_tl/Page-name.tl, _common_tl/SettingOutfilename.tl
//// Input variables: obj, img , description , empty 
//// -------------------------------------------------------------------------------------------------

(set project $obj)
(set projectID $project.$projIDFunc)
(set cost $project.$cost_func)
(set startDate $project.$projStartDateFunc)
(set compDate $project.$projEndDateFunc)
(set requirements $project.$projReqFunc)
(set scope $project.$projScopeFunc)
(set RespDep $project.$projRespOrgUnitfunc) 
(set PartDep $project.$projPartOrgUnitfunc)
(set PartGovAgencies $project.$projGovfunc)
(set services $project.$projSerfunc)
(set Risks $project.$projRiskfunc)

(set initiative_list (new-list))
(set Project_initiative $project.*PROJECT::requirements)

(foreach initiative $Project_initiative
	(
		(if (isa $initiative "*MANAGEMENT INITIATIVE")
			((set initiative_list(union $initiative_list $initiative)))
		)
	)
)
(set Project_objective $initiative_list.$reqObjvDrivenFunc)
(set Project_objective2 $initiative_list.$reqReqObjFunc)
(set Project_objective3 $project.*ACCOUNTABLE__PARTY::objectives)
(set Project_objective (union $Project_objective $Project_objective2))
(set Project_objective (union $Project_objective $Project_objective3))
]]