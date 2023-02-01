[[
	////loaded by ObjectInstances
	////sets obj to be used in setting outfilename.tl
	////sets obj_me used in the checkmultianchor.tl, description, getanchoreddiagram, linked files, Marksref, MultiAnchor related Diagrams ....
	////outfilename.tl returns "filename" to be generated, and "sur" which is the id of the obj in the knowledgebase
	////sets sur_me = sur 
	
	(set obj $instance)
	(load "../../../../_common_tl/SettingOutfilename.tl")
	(set obj_me $obj)
	(set sur_me $sur)
	(set objectoutfile $filename)
	(outdir $filesdirpath)
	(if (not (isa $obj "COMPETENCY"))((outfile $objectoutfile)))
	(set page_title $class)
	(load "TL/SECTIONS/Header.tl")
	(load "../../../../_common_tl/OBJECT/Description.tl")
]]