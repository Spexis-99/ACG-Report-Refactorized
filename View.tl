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
	(set ViewDiagramType $CurrentDiagram.$diagDiagTypeFunc)
	(if (or(= $ViewDiagramType $EBMMDT)(or(= $ViewDiagramType $SPDT)(or(= $ViewDiagramType $BPDT)(or(= $ViewDiagramType $SMDT) (or(= $ViewDiagramType $ABBDT) (or(= $ViewDiagramType $BADT)(or(= $ViewDiagramType $OSDT) (or(= $ViewDiagramType $RPFCDT) (or(= $ViewDiagramType $ARDT)(or(= $ViewDiagramType $CDDT) (or(= $ViewDiagramType $CFDT)(or(= $ViewDiagramType $BRDT)(or(= $ViewDiagramType $LODT)(or(= $ViewDiagramType $EBMMDDT)(or(= $ViewDiagramType $LDS)(= $ViewDiagramType $LPDT)))))))))))))))) 
	    	
	    (	
			(set option "View")
			(load "TL/CORE/GenerateReport.tl") 
	    )
	    (
			"(\nThis view from which you generated this report is not a diagram of type Strategic Planning.\nYou must select a Strategic Planning view before invoking this report.\n)"
	    )
	)
	        
]]