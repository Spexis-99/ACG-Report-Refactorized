[[
//// purpose to load the Key Performance Indicator
//// loaded by object.tl	

(set KPI $obj)
(if (isa $KPI "LEAD KEY PERFORMANCE INDICATOR")
	((set KPI_img "../Images/LeadKPI.png"))
	((set KPI_img "../Images/LagKPI.png"))
)

	(set KPI_name $obj.$name_func)
	(set KPI_briefDescription $obj.$briefDescription_func)
	(set KPI_type $obj.$KPITypeFunc)
	(set KPI_frequency $obj.$KPIFreqFunc)
	(set KPI_information_source $obj.$KPIInfoSourceFunc)
	(set KPI_ID $obj.$Title_func)
	(set KPI_Unit $obj.$KPIUnitFunc)
	(set KPI_formula $obj.$KPIFormulaFunc)
    ////(set direct_sub_classes_query "QUERY::CLASS/direct subclasses")
    (set KPI_direction $obj.QUERY::CLASS/direct_subclasses)
    (set _target_func "*KEY PERFORMANCE INDICATOR::target")
    (set _target $obj.$_target_func)
    (set target_year "Target::year")
////Target-Year 
(set target_2023_inst (surrogate (sm-lookup "2023" "YEAR")))
(set target_2024_inst (surrogate (sm-lookup "2024" "YEAR")))
(set target_2025_inst (surrogate (sm-lookup "2025" "YEAR")))

    (foreach _target $obj.$_target_func (
	    (set target_year_id (surrogate $_target.$target_year))
        (if (= $target_year_id $target_2023_inst)
		( (set target_2023 $_target) )
		( (if (= $target_year_id $target_2024_inst)
			  ( (set target_2024 $_target) )
			  ( (if (= $target_year_id $target_2025_inst)
				( (set target_2025 $_target) )
				
                ))
            ))
        )
     ))



    (set KPIObjectiveFunc "*KEY PERFORMANCE INDICATOR::objectives/measured")
    (set KPISupFunc "*KEY PERFORMANCE INDICATOR::part of")
    (set KPISubFunc "*KEY PERFORMANCE INDICATOR::kpi components")
    (set KPIMaxValFunc "*KEY PERFORMANCE INDICATOR::maximum value")
    (set KPIMinValFunc "*KEY PERFORMANCE INDICATOR::minimum value")
    (set KPIWeightFunc "*KEY PERFORMANCE INDICATOR::kpi weight")
    (set KPIObsProcedFunc "*KEY PERFORMANCE INDICATOR::kpi observation procedure")
    (set KPIScopeFunc "*KEY PERFORMANCE INDICATOR::kpi coverage scope")
    (set KPIMeasureFunc "*KEY PERFORMANCE INDICATOR::measures")
    (set KPITargetValFunc "*KEY PERFORMANCE INDICATOR::target value")
    (set KPIObsFunc "*KEY PERFORMANCE INDICATOR::kpi observations")
    (set KPIBaselineValFunc "*KEY PERFORMANCE INDICATOR::baseline value")
(load "HTML/INFO/KPI.html")
]]