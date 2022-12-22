[[
//// **************************************************************************
//// Purpose to generate the Information related to the Strategy Map concept
//// loaded by object.tl
//// **************************************************************************

//// to load the path and the outfile name

(set strategyMap $obj)

(set i "1")
(set j "1")
(set SMapYear $strategyMap.STRATEGY__MAP::target__year)	
(set SMap_SD $strategyMap.STRATEGY__MAP::strategic__destination)
(set SMap_Perspective $strategyMap.STRATEGY__MAP::perspective)

(set SMap_Theme $strategyMap.STRATEGY__MAP::theme)
(if $SMap_Theme
	(
		(foreach S_Theme $SMap_Theme
			(
				(if (isa $S_Theme "STRATEGIC__THEME")
					((set SMap_StrategicTheme (union $SMap_StrategicTheme $S_Theme)))
				)
			)
		)
	)
)

(set SMap_Assesment $strategyMap.STRATEGY__MAP::applyAssessment)
(if (not $SMap_Assesment) ((set SMap_Assesment "غير مُحدّد")))
(if (not $SMapYear) ((set SMapYear "غير مُحدّد")))

]]