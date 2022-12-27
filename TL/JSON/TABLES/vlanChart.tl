[[
////creates json file for the HTML/vlanChart.html page
(outfile "vlanChart.json")
(set vlan_list $vlan_class.$Instances_func)
(set total_num (numberin $vlan_list))
(set counter "0")
"( [ )"
(foreach vlan_instance $vlan_list
    (
        (set obj $vlan_instance)
        (set name $obj.*ENTERPRISE__RESOURCE::id)
        (set brand $obj.#OBJECT::#name)
        (set supplier $obj.*NETWORK::ip__subnet__address)
        (set VLAN_breifDescription $obj.#OBJECT::briefDescription)
        (set segmentation $obj.*NETWORK::network__elements)
        (set counter (add $counter "1"))
        (load "../../../../_common_tl/SettingOutfilename1.tl")
        "([
                "<a href=\'$(file)\'>$(brand)</a>",
                "$(name)",
                "$(VLAN_breifDescription)",
                "$(supplier)"
            ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"
    )
)
"( ] )"
]]