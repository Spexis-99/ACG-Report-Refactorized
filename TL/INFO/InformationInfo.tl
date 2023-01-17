[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set brand $obj.$entIDFunc)
(set name $obj.$name_func)
(set supplier $obj.$mClassSubjAreasFunc)
(set VLAN_breifDescription $obj.$briefDescription_func)
(set segmentation $obj.$infoSegmentationFunc)

(load "HTML/INFO/entity.html")
]]