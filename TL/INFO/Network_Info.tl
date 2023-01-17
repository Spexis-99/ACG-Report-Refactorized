[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$name_func)
(set fac_name $obj.$entAliasFunc)
(set type $obj.$type_func2)
(set brand $obj.$entIDFunc)
(set supplier $obj.$entResSupplierFunc)
(set Network_breifDescription $obj.$description_func)
(set Operating_System $obj.$NIDOSFunc)
(set importance $obj.*ENTERPRISE__RESOURCE::business__severity)
(set site $obj.$capPerformedAtFunc)
(set IP_addr $obj.$networkNodeIPFunc)
(set dep_date $obj.$entAcqDateFunc)
(set storage_price $obj.$entPurchaseCostFunc)
(set storage_maint $obj.$entMaintenanceCostFunc)


(load "HTML/INFO/network.html")
]]