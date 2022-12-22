[[
    (load "TL/CORE/SettingOutfilename.tl")
	
	(set obj_me $obj)
	(set sur_me $sur)
	(set objectoutfile $filename)
	
	(outdir $filesdirpath)
	(if (not (isa $obj "COMPETENCY"))((outfile $objectoutfile)))
	
	(set page_title $class)
	(load "TL/SECTIONS/Header.tl")
	
	(load "TL/CORE/Description.tl")
]]