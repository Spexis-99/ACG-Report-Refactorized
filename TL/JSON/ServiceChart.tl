[[
////creates json file for the HTML/servicechart.html page
(outfile "servicechart.json")
(set service_class "SERVICE")
(set service_list $service_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach service_instance $service_list
    (
        (set obj $service_instance)
        (set owner $obj.*CAPABILITY::owner)
        (set name $obj.#OBJECT::#name)
        (set description $obj.#OBJECT::briefDescription)
        (set benif $obj.*CAPABILITY::beneficiary)
        (set kpi)
        (set channel $obj.*CAPABILITY::process__description.*ARCHITECTURE__BUILDING__BLOCK::client__of__architecture__building__block__dependencies.*ARCHITECTURE__BUILDING__BLOCK__DEPENDENCY::supplier__architecture__building__block)
        (if 
            (not $description)
            (
                (continue)
            )
        )
        "(
            {
                col1:'[[set Name $objset Report_Flag $Service_Flagset ObjList "1"load "TL/CORE/NameOrAnchor.tl"]]',
                col2:'[[set Name $ownerset Report_Flag $Section_Flagset ObjList "1"load "TL/CORE/NameOrAnchor.tl"]],
                col3:'$(description)',
                col4:'[[(set Name $channel)(set Report_Flag "0")(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
            },
        )"
    )
)
"( ]` )"
]]