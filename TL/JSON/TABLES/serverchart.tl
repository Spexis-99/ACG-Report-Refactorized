
[[
////creates json file for the HTML/ServerChart.html page
    (outfile "ServerChart.json") 
    (set ServerUnionInstances (union $VMServInst $PhySerInst))
    (set total_num (numberin $ServerUnionInstances))
    (set counter "0")
"( [ )"
    (foreach ServerUnionInstance $ServerUnionInstances
    (
        (localvar obj)
        (set obj $ServerUnionInstance)
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
        (set type $obj.$objObjImmClassFunc)
        (set ServBreifDesc $obj.#OBJECT::#description)
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

                (localvar obj)
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
                (localvar obj)
                (set obj $xname)
                (load "../../../../_common_tl/SettingOutfilename.tl")
                "(
                    [
                        "<a href=\`$(file)\` > $(xname) </a>",
                        "$(type)",
                        "$(server_role)",
                        " - ",
                        "$(ServBreifDesc)",
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