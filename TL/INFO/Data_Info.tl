[[



(set sur (surrogate $obj))
(set filename (append (append (append "Server" "_") $sur) ".html"))
(set file (append "../HTMLFiles/" $filename))
(set sur_me $sur)



(set name $obj.$name_func)
(set fac_name $obj.$alias_func)
(set type $obj.$currImplementation)
(set brand $obj.$modelName_func)
(set supplier $obj.$supplier_func)
(set Database_breifDescription $obj.$briefDescription_func2)
(set Operating_System $obj.$OS_func)
(set importance $obj.$businessSeverity_func)
(set site $obj.$performedAt_func)
(set IP_addr $obj.$IP_func)
(set dep_date $obj.$depDate_func2)
(set storage_price $obj.$purchase_func)
(set storage_maint $obj.$maintenance_func)


(load "HTML/INFO/data_storage.html")
]]