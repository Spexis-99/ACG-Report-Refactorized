[[
//// purpose to load the Key Performance Indicator
//// loaded by object.tl	

(set KPI $obj)
(if (isa $KPI "LEAD KEY PERFORMANCE INDICATOR")
	((set KPI_img "../Images/LeadKPI.png"))
	((set KPI_img "../Images/LagKPI.png"))
)

	(set KPI_name $obj.$objNameFunc)
	(set KPI_briefDescription $obj.$objBriefDescFunc)
	(set KPI_type $obj.$KPITypeFunc)
	(set KPI_frequency $obj.$KPIFreqFunc)
	(set KPI_information_source $obj.$KPIInfoSrcFunc)
	(set KPI_ID $obj.$objTitleFunc)
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



    
(load "HTML/INFO/KPI.html")
]]