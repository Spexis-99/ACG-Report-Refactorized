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
	(load "TL/CORE/Sections/MainFrames.tl")

	(load "TL/CORE/Sections/Banner.tl")

	(load "TL/CORE/Sections/BottomBar.tl")

	(load "TL/CORE/Sections/VersionInfo.tl")



	(load "TL/CORE/DiagramsInstances.tl")
	(load "TL/CORE/ObjectsInstances.tl")
	(load "TL/CORE/ObjectDocuments.tl")
	////json for tables
	(load "TL/JSON/TABLES/ApplicationChart.tl")
	(load "TL/JSON/TABLES/CapabilityChart.tl")
	(load "TL/JSON/TABLES/DataChart.tl")
	(load "TL/JSON/TABLES/MainStrategyChart.tl")
	(load "TL/JSON/TABLES/NetworkChart.tl")
	(load "TL/JSON/TABLES/ObjectiveChart.tl")
	(load "TL/JSON/TABLES/ProcessChart.tl")
	(load "TL/JSON/TABLES/ProjectChart.tl")
	(load "TL/JSON/TABLES/SAPChart.tl")
	(load "TL/JSON/TABLES/ServerChart.tl")
	(load "TL/JSON/TABLES/ServiceChart.tl")
	(load "TL/JSON/TABLES/VlanChart.tl")
	////html for tables
	(load "HTML/TABLES/ApplicationChart.tl")
	(load "HTML/TABLES/CapabilityChart.tl")
	(load "HTML/TABLES/DataChart.tl")
	(load "HTML/TABLES/MainStrategyChart.tl")
	(load "HTML/TABLES/NetworkChart.tl")
	(load "HTML/TABLES/ObjectiveChart.tl")
	(load "HTML/TABLES/ProcessChart.tl")
	(load "HTML/TABLES/ProjectChart.tl")
	(load "HTML/TABLES/SAPChart.tl")
	(load "HTML/TABLES/ServerChart.tl")
	(load "HTML/TABLES/ServiceChart.tl")
	(load "HTML/TABLES/VlanChart.tl")



	(load "TL/CORE/MoveDataFiles.tl")
	

	(set invokefile (append $outdirpath (append "\\" $indexoutfile)))
	(set InvokeStat (invoke $invokefile))
	
]]