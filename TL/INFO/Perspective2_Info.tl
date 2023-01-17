[[
(set perspfile (append (append "Perspective2_" $sur_me) ".html"))
(outfile $perspfile)
(load "TL/SECTIONS/Header.tl")
(set Persp_Themes $perspective.$perspIncFunc)
(set Persp_Objective $perspective.$perspObjvInvFunc)
(set other_obj (new-list))
(set PT "0")
(foreach PO $Persp_Objective
	(
		(set obj_theme $PO.*OBJECTIVE::theme)
		(if $obj_theme
			(
				(foreach theme $obj_theme
					(
						(if (isa $obj_theme "PERSPECTIVE__THEME")
							((set PT "1"))
						)
					)
				)
				(if (= $PT $zero)
					((set other_obj (union $other_obj $PO)))
				)
			)
			(
				(set other_obj (union $other_obj $PO))
			)
		)
	)
)
]]