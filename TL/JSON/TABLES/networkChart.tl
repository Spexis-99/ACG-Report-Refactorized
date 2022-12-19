 
[[
////creates json file for the HTML/networkchart.html page
(outfile "networkchart.json")
(set network_class "*NETWORK INTERCONNECTION DEVICE")
(set network_list $network_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach network_instance $network_list
    (
        (set obj $network_instance)
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
        
        "(
            {
                'col1':'$(name)',
                'col2':'$(type)',
                'col3':'$(Network_breifDescription)',
                'col4':'$(brand)',
                'col5':'$(supplier)',
                'col6':'$(Operating_System)',
                'col7':'$(site)',
                'col8':'$(dep_date)',
                'col9':'$(importance)',
                'col10':'$(IP_addr)',
            }
        )"
    )
)
"( ]` )"
]]