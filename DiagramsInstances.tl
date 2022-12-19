[[
	(outdir $diagramsdirpath)

    (set user_level "134217729")
	(set diagrams_list (new-list))
	(set diagramSet (new-list))
	(set used_contexts (new-list))
	
	(set CFW "Competency FrameWork")
	(set CFW_diagrams $CFW.$CFW_diagrams_func)
	(foreach diagram $CFW_diagrams
		(
			(set sur_level (surrogate $diagram))
			(if( => $sur_level $user_level)
				((set diagramSet (union $diagramSet $diagram)))
			)
		)
	)
	
	(if $diagramSet
		(
			(set used_contexts (union $used_contexts $CFW))
			(foreach diag $diagramSet
				((load "TL/CORE/GenerateDiagram.tl"))
			)
			(set diagrams_list (union $diagrams_list $diagramSet))
		)
	)
	
	(set Contexts #CONTEXT.#CLASS::#instances)
	(foreach Context $Contexts
		(
			(if (not (= $Context $CFW))
				(
					(set diagramSet (new-list))
					(set context_diagrams $Context.$CFW_diagrams_func)
					(foreach diagram $context_diagrams
						(
							(set sur_level (surrogate $diagram))
							(if( => $sur_level $user_level)
								((set diagramSet (union $diagramSet $diagram)))
							)
						)
					)
					
					(if $diagramSet
						(
							(set used_contexts (union $used_contexts $Context))
							(set diagramSet (list-remove $diagramSet $diagrams_list))
							(foreach diag $diagramSet
								((load "TL/CORE/GenerateDiagram.tl"))
							)
							(set diagrams_list (union $diagrams_list $diagramSet))
						)
					)
				)
			)
		)
	)
	
	(set NoConDiags #DIAGRAM.$NoConDiags_func)
	(set NoConDiags (list-remove $NoConDiags $diagrams_list))
	(foreach diagram $NoConDiags
		(
			(set sur_level (surrogate $diagram))
			(if( => $sur_level $user_level)
				((set OtherDiagrams (union $OtherDiagrams $diagram)))
			)
		)
	)
	
	(foreach diag $OtherDiagrams
		((load "TL/CORE/GenerateDiagram.tl"))
	)

	////=============================================================================
	//// Generate Tree.
	////-----------------------------------------------------------------------------
	
	(outfile "DiagramsTree.html")
	(load "DiagramsTree.tl")
	
	
	
	
]]