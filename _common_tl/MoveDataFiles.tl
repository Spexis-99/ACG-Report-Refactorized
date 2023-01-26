[[
	(set DataFilesSet #DATA_FILE.$classInstFunc)
	(if $DataFilesSet
		(
			(outdir $datafilesdir)
			(foreach DataFile $DataFilesSet
				(
					(set firstpart (append "copy  \"" $DataFile))
					(set secondpart (append "\" \"" $(datafilesdir)))
					(set command (append $firstpart (append $secondpart "\"")))  
					(set copystatus (execute command)) 
				)
			)
		)
	)
]]