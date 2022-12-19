[[
////creates json file for the HTML/MainStrategychart.html page
(outfile "MainStrategychart.json")
(set MainStrategy_class "*OBJECTIVE")
(set MainStrategy_list $MainStrategy_class.#CLASS::CLASS/instances)
"( table_rows = `[ )"
(foreach MainStrategy_instance $MainStrategy_list
    (
        (set obj $MainStrategy_instance)
        (set perspective $obj.*OBJECTIVE::belongs__to)
        (set initiatives $obj.*OBJECTIVE::requirement__realized)
        (set Objective_Initiative_func $obj.*OBJECTIVE::requirements__realized)
        (set objective_project $Objective_Initiative_func.*REQUIREMENT::projects)
        (if (not $perspective)
            (
                (continue)
            )
        )
        "(
            {
                col1:$(perspective),
                col2:'[[(set Name $obj)(set Report_Flag $Goal_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                col3:'[[(set Name $Objective_Initiative_func)(set Report_Flag "0")(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]',
                col4:'[[(set Name $objective_project)(set Report_Flag $Project_Flag)(set ObjList "1")(load "TL/CORE/NameOrAnchor.tl")]]'
            },   
        )"
    )
)
"( ]` )"
]]