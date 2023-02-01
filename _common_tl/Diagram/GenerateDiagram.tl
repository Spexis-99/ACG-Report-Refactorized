[[
//// -----------------------------------------------------------------------------------------
//// Purpose: This tl generate the diagram frame, description and all the related diagram info 
//// Loaded by _common_tl/DIAGRAMsInstances.tl
//// Loads: _common_tl/SettingDiagramOutfile.tl, DiagramFrames.tl, _common_tl/OBJECT/Description.tl, _common_tl/DiagramInfo.tl
//// Input variables: diag, DiagRef, DiagImg, DiagFile , DiagPage , page_title
//// ------------------------------------------------------------------------------------------

	(set ddiag $diag)
	(set obj_me $ddiag)

	(set labelNeed "0")
	(load "../../../../_common_tl/SettingDiagramOutfile.tl")
	(set page_file $DiagRef)
	(set diag_file $DiagFile)
	(set diag_page $DiagPage)
	(set image_filename $DiagImg)
	(set diag_name $DiagName)
	(write-image $diag $DiagImg "JPEG")
	
	(outfile $DiagPage)
	(load "../../../../_common_tl/DIAGRAM/DiagramFrames.tl")

	(outfile $DF_file)
	(load "../../../../_common_tl/OBJECT/Description.tl")
	
	(outfile $diag_file)
	(set page_title $obj_me)
	(load "../../../../_common_tl/DIAGRAM/DiagramInfo.tl")
	
]]