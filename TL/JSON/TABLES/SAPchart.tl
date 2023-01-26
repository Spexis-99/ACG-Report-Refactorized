
[[
////creates json file for the HTML/sapChart.html page
(outfile "SAPChart.json")
(set total_num (numberin $VMServInst))
(set counter "0")
"( [ )"
(foreach VMServerInstance $VMServInst
    (
        (set obj $VMServerInstance)
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
        (set ServBreifDesc $obj.#OBJECT::#description)
        (set environment $obj.*ENTERPRISE__RESOURCE::id)
        (set FQDN $obj.*ENTERPRISE__RESOURCE::alias)
        (set SID $obj.*ENTERPRISE__RESOURCE::acronym)
        (set hardware_component $obj.*NETWORK__HOST::hardware__components)
        (set BriefDesc $obj.#OBJECT::briefDescription)
        (set counter (add $counter "1"))
        (load "../../../../_common_tl/SettingOutfilename1.tl")
        (if $hardware_component
            (
                "(
                    [
                    "<a href =\'$(file)\'>$(xname)</a>",
                    "$(environment)",
                    "$(type)",
                    "$(SID)",
                    "$(FQDN)",
                    "$(server_hosted)",
                    "$(IP_addr)",
                    [[
                        (foreach component $hardware_component
                            (
                                                "("$(component)",)"
                            )
                        )
                    ]]
                    "$(BriefDesc)"
                        ,$(counter)

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