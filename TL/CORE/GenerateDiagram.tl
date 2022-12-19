[[
//// -----------------------------------------------------------------------------------------
//// Purpose: This tl generate the diagram frame, description and all the related diagram info 
//// Loaded by TL/CORE/DiagramsInstances.tl
//// Loads: TL/CORE/SettingDiagramOutfile.tl, DiagramFrames.tl, TL/CORE/Description.tl, TL/CORE/Diagram_Info.tl
//// Input variables: diag, DiagRef, DiagImg, DiagFile , DiagPage , page_title
//// ------------------------------------------------------------------------------------------

	(set ddiag $diag)
	(set obj_me $ddiag)

	(set label_need "0")
	(load "TL/CORE/SettingDiagramOutfile.tl")
	(set page_file $DiagRef)
	(set diag_file $DiagFile)
	(set diag_page $DiagPage)
	(set image_filename $DiagImg)
	(set diag_name $DiagName)
	(write-image $diag $DiagImg "JPEG")
	
	(outfile $DiagPage)
	(load "TL/CORE/DiagramFrames.html")

	(outfile $DF_file)
	(load "TL/CORE/Description.tl")
	
	(outfile $diag_file)
	(set page_title $obj_me)
	(load "TL/CORE/Diagram_Info.tl")
	
]]