[[
////creates json file for the HTML/vlanChart.html page
(outfile "vlanChart.json")
(set total_num (numberin $VLANInstances))
(set counter "0")
"( [ )"
(foreach VlanInstance $VLANInstances
    (
        (set obj $VlanInstance)
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