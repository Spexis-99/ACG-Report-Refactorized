[[
    (load "_common_tl/SettingOutfilename.tl")
	
	(set obj_me $obj)
	(set sur_me $sur)
	(set objectoutfile $filename)
	
	(outdir $filesdirpath)
	(if (not (isa $obj "COMPETENCY"))((outfile $objectoutfile)))
	
	(set page_title $class)
	(load "TL/SECTIONS/Header.tl")
	
	(load "_common_tl/OBJECT/Description.tl")
]]