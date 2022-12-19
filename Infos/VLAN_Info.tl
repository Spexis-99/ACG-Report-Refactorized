[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$modelName_func)
(set brand $obj.$name_func)
(set supplier $obj.$VlanSupplier_func)
(set VLAN_breifDescription $obj.#OBJECT::briefDescription)
(set segmentation $obj.$relatedVlan_func)

(load "HTML_Files/vlan.html")
]]