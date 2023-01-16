[[
////loaded by ObjectInstances
////sets obj to be used in setting outfilename.tl
////sets obj_me used in the checkmultianchor.tl, description, getanchoreddiagram, linked files, Marksref, MultiAnchor related Diagrams ....
////outfilename.tl returns "filename" to be generated, and "sur" which is the id of the obj in the knowledgebase
////sets sur_me = sur 
////load related file design and info (RelatedInfoFile)


    (foreach instance $Instances
		(
			(set obj $instance)
			(load "../../../../_common_tl/SettingOutfilename.tl")
			(set obj_me $obj)
			(set sur_me $sur)
			(outdir $filesdirpath)
			(if (not (isa $obj "COMPETENCY"))((outfile $filename)))
			(set page_title $class)
			(load "TL/SECTIONS/Header.tl")
			(load "../../../../_common_tl/Description.tl")
			(load $RelatedInfoFile)
			(load "../../../../_common_tl/RelatedDiagrams.tl")
			(load "../../../../_common_tl/LinkedFiles.tl")
			(load "../../../../_common_tl/MultiAnchor.tl")
		)
	)
]]