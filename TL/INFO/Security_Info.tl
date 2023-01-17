[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$name_func)
(set fac_name $obj.$entAliasFunc)
(set type $obj.$SBBCurrImpToBeImpFunc)
(set brand $obj.$entIDFunc)
(set supplier $obj.$entResSupplierFunc)
(set Security_breifDescription $obj.$briefDescription_func2)
(set Operating_System $obj.$softwareOSPlatFunc)
(set importance $obj.$entBusSevFunc)
(set site $obj.$capPerformedAtFunc)
(set IP_addr $obj.$networkNodeIPFunc)
(set dep_date $obj.$entAcqDateFunc)

(set storage_price $obj.$entPurchaseCostFunc)
(set storage_maint $obj.$entMaintenanceCostFunc)


(load "HTML/INFO/security.html")
]]