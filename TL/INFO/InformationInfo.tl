[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set brand $obj.$entIDFunc)
(set name $obj.$objNameFunc)
(set supplier $obj.$mClassSubjAreasFunc)
(set VLAN_breifDescription $obj.$objBriefDescFunc)
(set segmentation $obj.$infoSegmentationFunc)

(load "HTML/INFO/entity.html")
]]