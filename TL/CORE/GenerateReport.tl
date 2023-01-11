[[	
	//// defines functions, classes, Querries to be discected
	(load "../../../../_common_tl/Setter/functions_name.tl")




	//// CONTROL.tl: turn on/off options
	(load "TL/CORE/CONTROL.tl")



	//// sets Global Variables
	(load "../../../../_common_tl/Report_Variables.tl")

	//// sets directory for the generated html portal
	(outdir $outdirpath)

	////moves generated image files from tempaltes image directory to generated image directory.
	(load "../../../../_common_tl/MoveDirectories.tl")

	//// checks if the option is an object or a view and generates an html or diagram depending on its type
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