[[	
	//// sets and defines functions, classes, Querries, Global Variables to be Used
	(load "../../../../_common_tl/SETTER/ClassName.tl")
	(load "../../../../_common_tl/SETTER/FunctionName.tl")
	(load "../../../../_common_tl/SETTER/QuerryName.tl")
	(load "../../../../_common_tl/SETTER/ReportVariables.tl")

	//// CONTROL.tl: turn on/off options
	(load "TL/CORE/CONTROL.tl")

	//// sets directory for the generated html portal
	(outdir $outdirpath)

	////moves files from FoldersToCopy to Generated file directory.
	(load "../../../../_common_tl/MoveDirectories.tl")

	//// checks if the option ( if theres an object or more selected option is an object/multi else its a view ) is an object or a view and generates an html or diagram depending on its type
	(load "../../../../_common_tl/Report_Options.tl")

	//// generates parts of the reports
	(load "TL/CORE/GenerateSections.tl")
	(load "TL/CORE/GenerateDiagrams.tl")
	(load "TL/CORE/GenerateObjects.tl")
	(load "TL/CORE/GenerateTables.tl")

	//// Moves Files to directory
	(load "../../../../_common_tl/MoveDataFiles.tl")

	(set invokefile (append $outdirpath (append "\\" $indexoutfile)))
	(set InvokeStat (invoke $invokefile))
	
]]