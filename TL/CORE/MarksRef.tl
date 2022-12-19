[[
//// -------------------------------------------------------------------------------------------------------------------
//// Purpose: This template will generate the appropriate hot links to data file, anchored diagrams, and document files
//// Loaded by TL/CORE/Diagram_Info.tl
//// Loads: TL/CORE/CheckMultiAnchor.tl
//// Input variables: obj_me, left_pos, bottom_pos, obj_width
//// --------------------------------------------------------------------------------------------------------------------

	(set marks-left $left_pos)
	(set marks-top $bottom_pos)
	(set marks-right (add $left_pos "15"))
	(set marks-bottom (add $bottom_pos "15"))
	(set max_width "28")
	
	(set obj_files $obj_me.#OBJECT::#data_files)
	(if $obj_files
		(
			(if (<= $obj_width $max_width)
				(
					(set marks-top (add $marks-top "15"))
				    (set marks-bottom (add $marks-bottom "15"))
				)
				(
					(set marks-left (add $marks-left "15"))
				    (set marks-right (add $marks-right "15"))
				)
			)
		)
	)
	
	//// Check for documents
	(set obj_doc $obj_me.$obj_doc_func)
	(set obj_LD $obj_me.$briefDescription_func2)
	(set obj_BD $obj_me.$briefDescription_func)
	(if (or $obj_doc (or $obj_LD $obj_BD))
		(
			(set docfilename (append $sur_me "_Document.html"))
			(if(isa $obj_me "#DIAGRAM")
				((set docfilepath (append "../DiagramsFiles/" $docfilename)))
				((set docfilepath (append "../../HTMLFiles/" $docfilename)))
			)
"(				<AREA SHAPE="RECT" id="trial_2" COORDS=\"$(marks-left),$(marks-top),$(marks-right),$(marks-bottom)\" HREF=\"javascript:open_window(\'$(docfilepath)\')\" title="$(class) Documents\">\n)"
			(if (<= $obj_width $max_width)
				(
					(set marks-top (add $marks-top "15"))
				    (set marks-bottom (add $marks-bottom "15"))
				)
				(
					(set marks-left (add $marks-left "15"))
				    (set marks-right (add $marks-right "15"))
				)
			)
		)
	)
	
	//// Check for anchored diagrams.
	(load "TL/CORE/CheckMultiAnchor.tl")
	(if $anch_diagrams
		(
"(				<AREA SHAPE="RECT" id="trial_3" COORDS=\"$(marks-left),$(marks-top),$(marks-right),$(marks-bottom)\" HREF=\"$(anch_ref)\"; title=\"$(class) Drilldown Models\" TARGET="$(targ)">\n)"
		)
	)
]]