[[
//// -------------------------------------------------------------------------------------------------------------------------
//// Purpose:  This is the main tl which we start the html generate report (choose one of these diagram types to be generated ////           from).
//// Loaded by  By Intelligile menu
//// Loads: TL/CORE/GenerateReport.tl
//// Input variables: object_list , c-diagram
//// --------------------------------------------------------------------------------------------------------------------------

	(set EBMMDT "EBMM Organization Strategic Intent")
	(set SPDT "Strategic Planning")
	(set BPDT "BPM Business Process")
	(set SMDT "BPM Service Model Diagram")
	(set ABBDT "IT Architecture Building Block")
	(set BADT "Business Architecture")
	(set OSDT "Organization Structure Diagram")
	(set RPFCDT "Role & Position Family Competency diagram")
	(set ARDT "Activity Role Diagram")
	(set CDDT "Competency Diagram")
	(set CFDT "Competency FrameWork Diagram")
	(set BRDT "Brand Diagram")
	(set LODT "Law outline")
	(set EBMMDDT "EBMM Directive Diagram")
	(set LPDT "Law Policy Diagram")
	(set LDS "LDS")
	
	(set CurrentDiagram $c-diagram)
	(set ViewDT $CurrentDiagram.#DIAGRAM::#diagram__types)
	(if (or(= $ViewDT $EBMMDT)(or(= $ViewDT $SPDT)(or(= $ViewDT $BPDT)(or(= $ViewDT $SMDT) (or(= $ViewDT $ABBDT) (or(= $ViewDT $BADT)(or(= $ViewDT $OSDT) (or(= $ViewDT $RPFCDT) (or(= $ViewDT $ARDT)(or(= $ViewDT $CDDT) (or(= $ViewDT $CFDT)(or(= $ViewDT $BRDT)(or(= $ViewDT $LODT)(or(= $ViewDT $EBMMDDT)(or(= $ViewDT $LDS)(= $ViewDT $LPDT)))))))))))))))) 
	    	
	    (	
			(set option "View")
			(load "TL/CORE/GenerateReport.tl") 
	    )
	    (
			"(\nThis view from which you generated this report is not a diagram of type Strategic Planning.\nYou must select a Strategic Planning view before invoking this report.\n)"
	    )
	)
	        
]]