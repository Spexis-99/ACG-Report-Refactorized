[[



(set sur (surrogate $obj))
    (set filename (append (append (append $class "_") $sur) ".html"))
	(set file (append "../HTMLFiles/" $filename))
	(set sur_me $sur)


(set name $obj.$name_func)
(set fac_name $obj.$name_func)
(set brand $obj.$modelName_func)
(set server_hosted $obj.$servHosted_func)
(set VirtServer_BriefDescription $obj.$description_func)
(set server_role $obj.$serverType_func)
(set operating_sys $obj.$OS_func)
(set importance $obj.$businessSeverity_func)
(set supplier $obj.$supplier_func)
(set installed_app $obj.$installedApp_func)
(set site $obj.$performedAt_func)
(set IP_addr $obj.$IP_func)
(set dep_date $obj.$depDate_func2)
(set server_price $obj.$purchase_func)
(set server_maint $obj.$maintenance_func)
(set related_vlan $obj.$relatedVlan_func)

(set environment $obj.$modelName_func)
(set FQDN $obj.$alias_func)
(set SID $obj.$acronym_func)
(set hardware_component $obj.$hardComp_func)

(if $hardware_component

	(
		(load "HTML_Files/virtual_server1.html")
	)
	(
		(load "HTML_Files/virtual_server.html")
	)
)



]]