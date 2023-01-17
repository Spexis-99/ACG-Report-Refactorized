[[



(set sur (surrogate $obj))
    (set filename (append (append (append $class "_") $sur) ".html"))
	(set file (append "../HTMLFiles/" $filename))
	(set sur_me $sur)


(set name $obj.$name_func)
(set fac_name $obj.$name_func)
(set brand $obj.$entIDFunc)
(set server_hosted $obj.$servHosted_func)
(set VirtServer_BriefDescription $obj.$description_func)
(set server_role $obj.$networkServerTypeFunc)
(set operating_sys $obj.$compPlatOSFunc)
(set importance $obj.$entBusSevFunc)
(set supplier $obj.$entResSupplierFunc)
(set installed_app $obj.$installedApp_func)
(set site $obj.$capPerformedAtFunc)
(set IP_addr $obj.$networkNodeIPFunc)
(set dep_date $obj.$entAcqDateFunc)
(set server_price $obj.$entPurchaseCostFunc)
(set server_maint $obj.$entMaintenanceCostFunc)
(set related_vlan $obj.$relatedVlan_func)

(set environment $obj.$entIDFunc)
(set FQDN $obj.$entAliasFunc)
(set SID $obj.$acronym_func)
(set hardware_component $obj.$hardComp_func)

(if $hardware_component

	(
		(load "HTML/INFO/virtual_server1.html")
	)
	(
		(load "HTML/INFO/virtual_server.html")
	)
)



]]