[[
////creates json file for the HTML/servicechart.html page
(outfile "servicechart.json")
(set service_list $service_class.$classInstancesFunc)
(set total_num (numberin $service_list))
(set counter "0")
"( [ )"
(foreach service_instance $service_list
    (
        (set obj $service_instance)
        (set owner $obj.*CAPABILITY::owner)
        (set name $obj.#OBJECT::#name)
        (set description $obj.#OBJECT::briefDescription)
        (set benif $obj.*CAPABILITY::beneficiary)
        (set channel $obj.*CAPABILITY::process__description.*ARCHITECTURE__BUILDING__BLOCK::client__of__architecture__building__block__dependencies.*ARCHITECTURE__BUILDING__BLOCK__DEPENDENCY::supplier__architecture__building__block)
        (set counter (add $counter "1"))
        (if 
            (not $description)
            (
                (continue)
            )
        )
        "([
                "[[(set Name $objset)(set Report_Flag $Service_Flagset)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "[[(set Name $ownerset)(set Report_Flag $Section_Flagset)(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]",
                "$(description)",
                "[[(set Name $channel)(set Report_Flag "0")(set ObjList "1")(load "../../../../_common_tl/NameOrAnchor.tl")]]"
                        ,$(counter)

        ][[
                (if (not (= $counter $total_num))
                    ("(,)")
                )
            ]])"
    )
)
"( ] )"
]]