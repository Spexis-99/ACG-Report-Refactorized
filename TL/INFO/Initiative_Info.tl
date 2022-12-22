[[
//// purpose to load the Initiative
//// loaded by object.tl

(set initiative $obj)
(set Initiative_objective $initiative.$objectives_driven_func)
(set Initiative_objective2 $initiative.$req_objects_func)
(set Initiative_objective (union $Initiative_objective $Initiative_objective2))
(set Initiative_project $initiative.$proj_func)
]]