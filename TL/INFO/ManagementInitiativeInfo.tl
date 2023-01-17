[[
//// purpose to load the Initiative
//// loaded by object.tl

(set initiative $obj)
(set Initiative_objective $initiative.$reqObjvDrivenFunc)
(set Initiative_objective2 $initiative.$reqReqObjFunc)
(set Initiative_objective (union $Initiative_objective $Initiative_objective2))
(set Initiative_project $initiative.$reqProjFunc)
]]