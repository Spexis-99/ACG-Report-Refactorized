[[
    (set classification $obj.$objObjImmClassFunc)
	(set class (classname $classification))
	(set sur (surrogate $obj))			
	(set filename (append (append (append $class "_") $sur) ".html"))	   
    (set file (append "../HTMLFiles/" $filename))
]]