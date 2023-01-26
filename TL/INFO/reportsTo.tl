[[
//// ----------------------------------------------------------------------
//// Purpose: This tl Display the report path of the position
//// Loaded by Position_Info.tl and reportsTo.tl
//// Loads: _common_tl/SettingOutfilename.tl, reportsTo.tl 
//// ----------------------------------------------------------------------

 (set Function1 "*ACCOUNTABLE PARTY::supervisors")
 (set reports $InputObject1.$Function1)


 (if $reports
	(
		(if (not (isa $reports "*TEAM"))
			(
				(foreach obj $reports
					(
						(load "_common_tl/SettingOutfilename.tl")
						"( <A HREF=\"$(file)\" TARGET="diagram"> $(obj) </A> -> )"
						////(set Position_report_path (append $Position_report_path " $(obj) ->" ))
						
					)
				)
			)
			(
				(set orgunit $reports.*ACCOUNTABLE__PARTY::supervisors)
				(set reports $orgunit.*ORGANIZATION::Head__Position)
				(foreach obj $reports
					(
						(load "_common_tl/SettingOutfilename.tl")
						"( <A HREF=\"$(file)\" TARGET="diagram"> $(obj) </A> ->)"
						////(set Position_report_path (append $Position_report_path " $(obj) ->" ))
					)
				)
			)
		)
	)
	(
		(if (not (isa $reports "*TEAM"))
			(		
				(set orgunit $InputObject1.*POSITION::organization)
				(set orgunit $orgunit.*ACCOUNTABLE__PARTY::supervisors)
				(set reports $orgunit.*ORGANIZATION::Head__Position)
			)
		)
		(foreach obj $reports
		(
			(load "_common_tl/SettingOutfilename.tl")
			"(<A HREF=\"$(file)\" TARGET="diagram"> $(obj) </A> ->)"
			////(set Position_report_path (append $Position_report_path " $(obj) " ))
		)
		)
	)
 )
 
 
 (set InputObject1 $reports)
   (set Function1 "*ACCOUNTABLE PARTY::supervisors")
 (set reports $InputObject1)
(if $reports
	(
		(load "TL/INFO/reportsTo.tl")
	)
)
 
]]