[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$name_func)
(set VLAN_breifDescription $obj.$briefDescription_func)
(set segmentation $obj.$segmentation_func)
(set server $obj.$serversAvailable_func)
(load "HTML/INFO/cluster.html")
]]