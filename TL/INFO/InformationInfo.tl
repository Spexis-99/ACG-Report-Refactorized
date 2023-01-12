[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set brand $obj.$modelName_func)
(set name $obj.$name_func)
(set supplier $obj.$supplier2_func)
(set VLAN_breifDescription $obj.$briefDescription_func)
(set segmentation $obj.$segmentation_fun2)

(load "HTML/INFO/entity.html")
]]