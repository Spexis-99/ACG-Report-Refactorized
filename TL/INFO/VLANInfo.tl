[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$entIDFunc)
(set brand $obj.$objNameFunc)
(set supplier $obj.$networkSubIPFunc)
(set VLAN_breifDescription $obj.#OBJECT::briefDescription)
(set segmentation $obj.$networkElmFunc)

(load "HTML/INFO/vlan.html")
]]