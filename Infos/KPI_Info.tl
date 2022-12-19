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
	(set KPI_type $obj.$KPI_type_func)
	(set KPI_frequency $obj.$KPI_frequency_func)
	(set KPI_information_source $obj.$KPI_information_source_func)
	(set KPI_ID $obj.$Title_func)
	(set KPI_Unit $obj.$KPI_Unit_func)
	(set KPI_formula $obj.$KPI_formula_func)
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
(load "HTML_Files/KPI.html")
]]