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

	//// Purpose: This tl generate the Main Frame of the html report
	(load "TL/CORE/MainFrames.tl")


	//// generates json file to fill banner ... page by js
	(load "TL/JSON/Fill.tl")

	//// generates json file to fill VersionInfo page by js
	(load "TL/JSON/VersionInfo.tl")



	(load "TL/CORE/DiagramsInstances.tl")
	(load "TL/CORE/ObjectsInstances.tl")
	(load "TL/CORE/ObjectDocuments.tl")
	(load "TL/JSON/SAPChart.tl")
	(load "TL/JSON/ServerChart1.tl")
	(load "TL/JSON/NetworkChart.tl")
	(load "TL/JSON/VlanChart.tl")
	(load "TL/JSON/applicationchart.tl")
	(load "TL/JSON/DataChart1.tl")
	(load "TL/JSON/ObjectiveChart.tl")
	(load "TL/JSON/MainStrategyChart.tl")
	(load "TL/JSON/ServiceChart.tl")
	(load "TL/JSON/ProcessChart.tl")
	(load "TL/JSON/ProjectChart.tl")
	(load "TL/JSON/CapabilityChart.tl")
	(load "TL/CORE/MoveDataFiles.tl")
	

	(set invokefile (append $outdirpath (append "\\" $indexoutfile)))
	(set InvokeStat (invoke $invokefile))
	
]]