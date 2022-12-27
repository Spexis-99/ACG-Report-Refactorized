[[
	////(set multi "0")
	(set anch_diagrams $obj_me.$anch_diagrams_func)
	(set nb_anch (numberin $anch_diagrams))
	(if $anch_diagrams
		(
			(if (> $nb_anch $one)
				(
					(set multi "1")
					(set anch_page (append $sur_me "_Diagrams.html"))
					(set anch_ref (append "../../HTMLFiles/" $anch_page))
					(set targ "_self")
				)
				(
					(set multi "0")
					(set ddiag $anch_diagrams)
					(set label_need "0")
					(load "../../../../_common_tl/SettingDiagramOutfile.tl")
					(set anch_ref $DiagRef)	
					(set targ "Body")
				)
			)
		)
	)

]]