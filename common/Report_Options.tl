[[
	//// checks if the option is an object or a view and generates an html or diagram depending on its type
	(set opt_view "View")
	(set opt_object "Object")
	
	(if (= $option $opt_view)
		(
			(set ddiag $CurrentDiagram)
			(set label_need "0")
			(load "../../../../_common_tl/SettingDiagramOutfile.tl")
			(set d_object $ddiag.#DIAGRAM::#contains)
			(set page_title $CurrentDiagram)
			(set bodysrc (append "HTMLFiles/DiagramsFiles/" $DiagPage))
		)
	)
	
	(if (= $option $opt_object)
		(
			(load "../../../../_common_tl/SettingOutfilename.tl")
			(set page_title (append $class (append "-" $date)))
			(set bodysrc (append "HTMLFiles/" $filename))
		)
	)

]]