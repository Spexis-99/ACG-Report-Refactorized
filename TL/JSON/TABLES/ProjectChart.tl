[[
////creates json file for the HTML/ProjectChart.html page
(outfile "ProjectChart.json")
(set project_class "*PROJECT")
(set project_list $project_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach project_instance $project_list
    (
        (set obj $project_instance)
        (set sign $obj.$Title_func)
        (set project $obj.$name_func)
        (set description $obj.$briefDescription_func)
        (set owner $obj.$project_owner)
        (set start $obj.*PROJECT::start__date)
        (set duration $obj.*PROJECT::duration)
        (set cost $obj.*PROJECT::costs)
        "(
            {
                'col1':$(sign),
                'col2':'[[(set Name $obj)(set Report_Flag $Project_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                'col3':$(description),
                'col4':'[[(set Name $owner)(set Report_Flag $Section_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                'col5':$(start),
                'col6':$(duration),
                'col7':$(total_cost),
            }
        )"
    )
)
"( ]` )"
]] 