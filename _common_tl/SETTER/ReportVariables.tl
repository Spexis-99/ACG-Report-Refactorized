[[
	//// sets Global Variables
	//// sets directory for generated files  $OrganizationName+"AR_EA_"+(classname $date)+ (provided by Report_Variables.tl)
	//// filesdirpath "/HTMLFiles"
	//// diagramsdirpath "/DiagramsFiles"
	//// datafilesdir "/DataFiles"

	
	//// Global Variables
	(set empty "")
	(set zero "0")
	(set one "1")
	
	//// Lists
	(set gen_diag_objects (new-list))
	
	//// Report Directories
	(set CurrentDiagramObjects $CurrentDiagram.#DIAGRAM::#contains)
	(foreach CurrentDiagramObj $CurrentDiagramObjects
		(
			(if (isa $CurrentDiagramObj "*ORGANIZATION")
				((set OrganizationName $CurrentDiagramObj)(break))
				((set OrganizationName "Organization"))
			)
		)
	)
	
	(set outdirpath (append "C:/MapACG/reports/" (append $OrganizationName  "AR_EA_" )))
	(set newdate (classname $date))
	(set outdirpath (append $outdirpath $newdate))
	(set filesdirpath (append $outdirpath "/HTMLFiles"))
	(set diagramsdirpath (append $filesdirpath "/DiagramsFiles"))
	(set datafilesdir (append $outdirpath "/DataFiles"))

	
	
	//// Competency Levels
	(set DLev "1- Acquire")
	(set CLev "2- Apply")
	(set BLev "3- Leverage")
	(set ALev "4- Visionary")



	////-----------------------------------------------------------------------------------------------------------------
	
	//// Social media URLs:
    //// ---------------------------------------------------
    (set FbLink "https://www.facebook.com/spgaksa")
    (set IgLink "")
    (set TwLink "https://twitter.com/SpgaKsa")
    //// ---------------------------------------------------
	//// Banner 
	(set Customer_Home "https://spga.gov.sa")


	//// Bottom Bar
	(set Customer_Name "SPGA")
    (set Bar_Color "#47763b")       ////Enter color as hex color

]]
