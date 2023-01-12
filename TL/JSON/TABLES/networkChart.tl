 
[[
////creates json file for the HTML/networkchart.html page
(outfile "networkchart.json")
(set total_num (numberin $NetworkInstances))
(set counter "0")
"( [ )"
(foreach NetworkInstance $NetworkInstances
    (
        (set obj $NetworkInstances)
        (set name $obj.#OBJECT::#name)
        (set fac_name $obj.*ENTERPRISE__RESOURCE::alias)
        (set type $obj.#OBJECT::OBJECT/immediate__classification)
        (set brand $obj.*ENTERPRISE__RESOURCE::id)
        (set supplier $obj.*ENTERPRISE__RESOURCE::resource__supplier)
        (set Network_breifDescription $obj.#OBJECT::#description)
        (set Operating_System $obj.*NETWORK__INTERCONNECTION__DEVICE::*operating__system)
        (set importance $obj.*ENTERPRISE__RESOURCE::business__severity)
        (set site $obj.*CAPABILITY::performed__at)
        (set IP_addr $obj.*NETWORK__NODE::ip__address)
        (set dep_date $obj.*ENTERPRISE__RESOURCE::acquisition__date)
        (set counter (add $counter "1"))
        
        "([
                "$(name)",
                "$(type)",
                "$(Network_breifDescription)",
                "$(brand)",
                "$(supplier)",
                "$(Operating_System)",
                "$(site)",
                "$(dep_date)",
                "$(importance)",
                "$(IP_addr)",
            ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"
    )
)
"( ] )"
]]