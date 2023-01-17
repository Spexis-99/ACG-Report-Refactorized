[[

    (set sur (surrogate $obj))
    (set filename (append (append (append "Server" "_") $sur) ".html"))
    (set file (append "../HTMLFiles/" $filename))
    (set sur_me $sur)


    (set name $obj.#OBJECT::#name)
    (set benif $obj.*CAPABILITY::beneficiary)
    (set owner $obj.*CAPABILITY::owner)
    (set breifDescription $obj.#OBJECT::briefDescription)
    (set super_service $obj.SERVICE::super__service)
    (set sub_service $obj.SERVICE::sub__services)
    (set service (union $super_service $sub_service))
    (set capExtStakeHoldersFunc "*CAPABILITY::external stakeholders")
    (set capIntStakeHoldersFunc "*CAPABILITY::internal stakeholder")
    (set related_outside $obj.$capExtStakeHoldersFunc)
    (set related_inside $obj.$capIntStakeHoldersFunc)
    (set provided_by $obj.$serProvByFunc)
    
    (set digitization $obj.SERVICE::provided__by.#BUSINESS__ACTIVITY::automation__level)
    (set channel $obj.*CAPABILITY::process__description.*ARCHITECTURE__BUILDING__BLOCK::client__of__architecture__building__block__dependencies.*ARCHITECTURE__BUILDING__BLOCK__DEPENDENCY::supplier__architecture__building__block)
    (set external_sys $obj.#NAMED__ELEMENT::clientDependency.#DEPENDENCY::supplier)

    (load "HTML/INFO/services.html")




]]