
[[
////creates json file for the HTML/sapChart.html page
(outfile "sapChart.json")
(set server_class "Virtual machine server")
(set virtual_server_list $virtual_server_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach server_instance $virtual_server_list
    (
        (set obj $server_instance)
        (set xname $obj.#OBJECT::#name)
        (set fac_name $obj.#OBJECT::#name)
        (set brand $obj.*ENTERPRISE__RESOURCE::id)
        (set server_hosted $obj.Virtual__machine__server::Hosted__on)
        (set VirtServer_BriefDescription $obj.#OBJECT::#description)
        (set server_role $obj.*NETWORK__SERVER::server__types)
        (set operating_sys $obj.*COMPUTING__PLATFORM::operating__system)
        (set importance $obj.*ENTERPRISE__RESOURCE::business__severity)
        (set supplier $obj.*ENTERPRISE__RESOURCE::resource__supplier)
        (set installed_app $obj.*NETWORK__HOST::software__deployed)
        (set site $obj.*CAPABILITY::performed__at)
        (set IP_addr $obj.*NETWORK__NODE::ip__address)
        (set dep_date $obj.*ENTERPRISE__RESOURCE::acquisition__date)
        (set server_price $obj.*ENTERPRISE__RESOURCE::purchase__cost)
        (set server_maint $obj.*ENTERPRISE__RESOURCE::Maintenance__Cost)
        (set type $obj.#OBJECT::OBJECT/immediate__classification)
        (set Server_breifDescription $obj.#OBJECT::#description)
        (set environment $obj.*ENTERPRISE__RESOURCE::id)
        (set FQDN $obj.*ENTERPRISE__RESOURCE::alias)
        (set SID $obj.*ENTERPRISE__RESOURCE::acronym)
        (set hardware_component $obj.*NETWORK__HOST::hardware__components)
        (set BriefDesc $obj.#OBJECT::briefDescription)
        (load "SettingOutfilename1.tl")
        (if $hardware_component
            (
                "(
                    {
                    col1:'<a href =\"$(file)\">$(xname)</a>',
                    col2:'$(environment)',
                    col3:'$(type)',
                    col4:'$(SID)',
                    col5:$(FQDN),
                    col6:$(server_hosted),
                    col7:$(IP_addr),
                    [[
                        (set counter 0)
                        (foreach component $hardware_component
                            (
                                (if (= counter 0)
                                    (
                                        (set counter 1)
                                        "(col8:$(component),)"
                                    )
                                    (
                                        (if (= counter 1)
                                            (
                                                "(col9:$(component),)"
                                            )
                                            ("(col10:$(component),)")
                                        )
                                    )
                                )
                            )
                        )
                    ]]
                    col11:$(BriefDesc),
                    }
                )"
            )
        )
        
    )
)
"( ]` )"
]]