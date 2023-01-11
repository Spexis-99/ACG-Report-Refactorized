[[	
	//// defines functions
	(load "../../../../_common_tl/functions_name.tl")
	//// CONTROL.tl: turn on/off options
	(load "TL/CORE/CONTROL.tl")
	//// sets Global Variables
	//// sets directory for generated files  $OrganizationName+"AR_EA_"+(classname $date)+ (provided by Report_Variables.tl)
	//// filesdirpath "/HTMLFiles"
	//// diagramsdirpath "/DiagramsFiles"
	//// datafilesdir "/DataFiles"
	(load "../../../../_common_tl/Report_Variables.tl")
	(outdir $outdirpath)
	////moves generated image files from tempaltes image directory to generated image directory.
	(load "../../../../_common_tl/MoveDirectories.tl")
	//// checks if the option is an object or a view and generates an html or diagram depending on its type
	(load "../../../../_common_tl/Report_Options.tl")
	(load "TL/CORE/GenerateSections.tl")
	(load "TL/CORE/GenerateDiagrams.tl")
	(load "TL/CORE/GenerateObjects.tl")
	(load "TL/CORE/GenerateTables.tl")
	(load "../../../../_common_tl/MoveDataFiles.tl")
	(set invokefile (append $outdirpath (append "\\" $indexoutfile)))
	(set InvokeStat (invoke $invokefile))
	
]]