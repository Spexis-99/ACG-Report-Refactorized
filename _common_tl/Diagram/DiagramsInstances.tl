[[
	//// changes directory for the generated files
	(outdir $diagramsdirpath)
	
    (set UserLevel "134217729")
	(set DiagList (new-list))
	(set DiagSet (new-list))
	(set UsedContexts (new-list))

	(foreach diagram $CFCtxDiagFunc
		(
			(set SurLevel (surrogate $diagram))
			(if( => $SurLevel $UserLevel)
				((set DiagSet (union $DiagSet $diagram)))
			)
		)
	)
	
	(if $DiagSet
		(
			(set UsedContexts (union $UsedContexts $CFClass))
			(foreach diag $DiagSet
				((load "_common_tl/DIAGRAM/GenerateDiagram.tl"))
			)
			(set DiagList (union $DiagList $DiagSet))
		)
	)
	
	(foreach Context contextsClassInstFunc
		(
			(if (not (= $Context $CFClass))
				(
					(set DiagSet (new-list))
					(set ContextDiagrams $Context.$ctxDiagTypeDiagFunc)
					(foreach diagram $ContextDiagrams
						(
							(set SurLevel (surrogate $diagram))
							(if( => $SurLevel $UserLevel)
								((set DiagSet (union $DiagSet $diagram)))
							)
						)
					)
					
					(if $DiagSet
						(
							(set UsedContexts (union $UsedContexts $Context))
							(set DiagSet (list-remove $DiagSet $DiagList))
							(foreach diag $DiagSet
								((load "_common_tl/DIAGRAM/GenerateDiagram.tl"))
							)
							(set DiagList (union $DiagList $DiagSet))
						)
					)
				)
			)
		)
	)
	
	(set DiagInstNoCtxFunc (list-remove $DiagInstNoCtxFunc $DiagList))

	(foreach diagram $DiagInstNoCtxFunc
		(
			(set SurLevel (surrogate $diagram))
			(if( => $SurLevel $UserLevel)
				((set OtherDiagrams (union $OtherDiagrams $diagram)))
			)
		)
	)
	
	(foreach diag $OtherDiagrams
		((load "_common_tl/DIAGRAM/GenerateDiagram.tl"))
	)
]]