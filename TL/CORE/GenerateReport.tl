[[	
	//// defines functions
	(load "TL/CORE/functions_name.tl")

	//// CONTROL.tl: turn on/off options
	(load "TL/CORE/CONTROL.tl")

	//// sets Global Variables
	//// sets directory for generated files  $OrganizationName+"AR_EA_"+(classname $date)+ (provided by Report_Variables.tl)
	//// filesdirpath "/HTMLFiles"
	//// diagramsdirpath "/DiagramsFiles"
	//// datafilesdir "/DataFiles"
	(load "TL/CORE/Report_Variables.tl")
	(outdir $outdirpath)

	////moves generated image files from tempaltes image directory to generated image directory.
	(load "TL/CORE/MoveDirectories.tl")

	//// checks if the option is an object or a view and generates an html or diagram depending on its type
	(load "TL/CORE/Report_Options.tl")

	(load "TL/CORE/GenerateSections.tl")

	(load "TL/CORE/DiagramsInstances.tl")
	(load "TL/CORE/ObjectsInstances.tl")
	(load "TL/CORE/ObjectDocuments.tl")
	
	(load "TL/CORE/GenerateJsons.tl")
	(load "TL/CORE/GenerateTables.tl")

	(load "TL/CORE/MoveDataFiles.tl")
	

	(set invokefile (append $outdirpath (append "\\" $indexoutfile)))
	(set InvokeStat (invoke $invokefile))
	
]]