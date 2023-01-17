[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$objNameFunc)
(set VLAN_breifDescription $obj.$objBriefDescFunc)
(set segmentation $obj.$entWorksWithFunc)
(set server $obj.$clustServCompFunc)
(load "HTML/INFO/cluster.html")
]]