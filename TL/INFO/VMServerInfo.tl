[[



(set sur (surrogate $obj))
    (set filename (append (append (append $class "_") $sur) ".html"))
	(set file (append "../HTMLFiles/" $filename))
	(set sur_me $sur)


(set name $obj.$objNameFunc)
(set fac_name $obj.$objNameFunc)
(set brand $obj.$entIDFunc)
(set server_hosted $obj.$VMServHostOnFunc)
(set VirtServer_BriefDescription $obj.$objDescFunc)
(set server_role $obj.$networkServTypeFunc)
(set operating_sys $obj.$compPlatOSFunc)
(set importance $obj.$entBusSevFunc)
(set supplier $obj.$entResSupplierFunc)
(set installed_app $obj.$NHSoftwareDeplFunc)
(set site $obj.$capPerformedAtFunc)
(set IP_addr $obj.$networkNodeIPFunc)
(set dep_date $obj.$entAcqDateFunc)
(set server_price $obj.$entPurchaseCostFunc)
(set server_maint $obj.$entMaintenanceCostFunc)
(set related_vlan $obj.$networkElmFunc)

(set environment $obj.$entIDFunc)
(set FQDN $obj.$entAliasFunc)
(set SID $obj.$entAcronymFunc)
(set hardware_component $obj.$NHHardwareCompFunc)

(if $hardware_component

	(
		(load "HTML/INFO/virtual_server1.html")
	)
	(
		(load "HTML/INFO/virtual_server.html")
	)
)



]]