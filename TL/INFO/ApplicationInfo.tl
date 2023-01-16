[[
    (set *Application $obj)
    (set classification $obj.#OBJECT::OBJECT/all__functions)

	(set sur (surrogate $obj))
    (set filename (append (append (append $class "_") $sur) ".html"))
	(set file (append "../HTMLFiles/" $filename))
	(set sur_me $sur)
    


    (set app_name $obj.$name_func)
    (if $app_name 
        (
            (set app_name $app_name)
        )
        (
            (set app_name "Not Available")
        )
    )

    (set app_owner $obj.$CapabilityOwnerFunc)
    (if $app_owner 
        (
            (set app_owner $app_owner)
        )
        (
            (set app_owner "Not Available")
        )
    )

    (set app_developed_by $obj.$softwaredevelopedByFunc)
    (if $app_developed_by 
        (
            (set app_developed_by $app_developed_by)
        )
        (
            (set app_developed_by "Not Available")
        )
    )

    (set app_briefDescription $obj.$briefDescription_func)
    (if $app_briefDescription 
        (
            (set app_briefDescription $app_briefDescription)
        )
        (
            (set app_briefDescription "Not Available")
        )
    )

    (set app_type $obj.$appCatFunc)
    (if $app_type 
        (
            (set app_type $app_type)
        )
        (
            (set app_type "Not Available")
            
			
        )
    )

    (set app_face $obj.$appUIFunc)
    (if $app_face 
        (
            (set app_face $app_face)
        )
        (
            (set app_face "Not Available")
        )
    )

    (set app_structure $obj.$applicationDevelopmentMethodFunc)
    (if $app_structure 
        (
            (set app_structure $app_structure)
        )
        (
            (set app_structure "Not Available")
        )
    )

    (set app_lang $obj.$softwareProgrammingLanguagesFunc)
    (if $app_lang 
        (
            (set app_lang $app_lang)
        )
        (
            (set app_lang "Not Available")
        )
    )

    (set app_version $obj.$applicationVersionFunc)
    (if $app_version 
        (
            (set app_version $app_version)
        )
        (
            (set app_version "Not Available")
        )
    )
    (set technical_name $obj.$appTechNameFunc)
    (if $technical_name 
        (
            (set technical_name $technical_name)
        )
        (
            (set technical_name "Not Available")
        )
    )
    (set dev_date $obj.$applicationDevelopmentYearFunc)
    (if $dev_date 
        (
            (set dev_date $dev_date)
        )
        (
            (set dev_date "Not Available")
        )
    )
    (set deployed_date $obj.$depDate_func)
    (if $deployed_date 
        (
            (set deployed_date $deployed_date)
        )
        (
            (set deployed_date "Not Available")
        )
    )

    (set end_date $obj.$endDate_func)
    (if $end_date 
        (
            (set end_date $end_date)
        )
        (
            (set end_date "Not Available")
        )
    )  

    (set app_price $obj.$EnterprisePurchaseCostFunc)
    (if $app_price 
        (
            (set app_price $app_price)
        )
        (
            (set app_price "Not Available")
        )
    ) 

    (set app_maint $obj.$EnterpriseMaintenanceCostFunc)
    (if $app_maint 
        (
            (set app_maint $app_maint)
        )
        (
            (set app_maint "Not Available")
        )
    ) 

    (set supported $obj.$EnterpriseCapabilitiesSupportedFunc)
    (if $supported 
        (
            (set supported $supported)
        )
        (
            (set supported "Not Available")
        )
    )  
   
    
    
    
    (load "HTML/INFO/application.html")

]]