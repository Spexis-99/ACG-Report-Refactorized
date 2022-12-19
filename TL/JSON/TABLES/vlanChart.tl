[[
////creates json file for the HTML/vlanChart.html page
(outfile "vlanChart.json")
(set vlan_class "*VIRTUAL LOCAL AREA NETWORK")
(set vlan_list $vlan_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach vlan_instance $vlan_list
    (
        (set obj $vlan_instance)
        (set name $obj.*ENTERPRISE__RESOURCE::id)
        (set brand $obj.#OBJECT::#name)
        (set supplier $obj.*NETWORK::ip__subnet__address)
        (set VLAN_breifDescription $obj.#OBJECT::briefDescription)
        (set segmentation $obj.*NETWORK::network__elements)
        (load "TL/CORE/SettingOutfilename1.tl")
        "(
            {
                'col1':'<a href=\"$(file)\">$(brand)</a>',
                'col2':'$(name)',
                'col3':'$(VLAN_breifDescription)',
                'col4':'$(supplier)',
            }    
        )"
    )
)
"( ]` )"
]]