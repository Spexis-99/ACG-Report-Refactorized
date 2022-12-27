
[[
////creates json file for the HTML/ServerChart.html page
    (outfile "ServerChart.json") 
    (set virtual_server_list $virtual_server_class.#CLASS::CLASS/instances)
    (set server_list $server_class.#CLASS::CLASS/instances)
    (set servers_list (union $virtual_server_list $server_list))
    (set total_num (numberin $servers_list))
    (set counter "0")
"( [ )"
    (foreach server_instance $servers_list
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
        (set counter (add $counter "1"))
        (load "../../../../_common_tl/SettingOutfilename1.tl")
        (if 
            (= $type "Virtual machine server")
            (

                (set obj $xname)
                (load "../../../../_common_tl/SettingOutfilename.tl")
                "(
                    [
                      "[[(set Name $obj)(set Report_Flag $Server_Flag)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                      "$(type)",
                      "$(server_role)",
                      "$(server_hosted)",
                      "$(VirtServer_BriefDescription)",
                      "$(brand)",
                      "$(supplier)",
                      "$(operating_sys)",
                      "$(site)",
                      "$(dep_date)",
                      "$(importance)",
                      "$(IP_addr)",
                      "$(installed_app)",
                    ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]]
                )"
            )
            (   
                (set obj $xname)
                (load "../../../../_common_tl/SettingOutfilename.tl")
                "(
                    [
                        "<a href=\`$(file)\` > $(xname) </a>",
                        "$(type)",
                        "$(server_role)",
                        " - ",
                        "$(Server_breifDescription)",
                        "$(brand)",
                        "$(supplier)",
                        "$(operating_sys)",
                        "$(site)",
                        "$(dep_date)",
                        "$(importance)",
                        "$(IP_addr)",
                        "$(installed_app)"

                    ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"
            )
        )
    )
)
"( ] )"
]]