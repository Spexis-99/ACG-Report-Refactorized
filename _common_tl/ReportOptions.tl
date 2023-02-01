[[
	//// checks if the option ( if theres an object or more selected option is an object/multi else its a view ) is an object or a view and generates an html or diagram depending on its type
	(set optView "View")
	(set optObject "Object")
	(if (= $option $optView)
		(
			(set ddiag $CurrentDiagram)
			(set labelNeed "0")
			(load "../../../../_common_tl/SettingDiagramOutfile.tl")
			(set d_object $ddiag.$DiagContFunc)
			(set page_title $CurrentDiagram)
			(set bodysrc (append "HTMLFiles/DiagramsFiles/" $DiagPage))
		)
	)
	(if (= $option $optObject)
		(
			(load "../../../../_common_tl/SettingOutfilename.tl")
			(set page_title (append $class (append "-" $date)))
			(set bodysrc (append "HTMLFiles/" $filename))
		)
	)
]]