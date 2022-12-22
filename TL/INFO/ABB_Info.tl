[[
//// **************************************************************************
//// Purpose to generate the Information related to the ABB
//// loaded by ObjectsInfo.tl
//// **************************************************************************

(set ABB $obj)
(set super $ABB.$super_func)
(set children $ABB.$children_func) 
(set classes $ABB.$classes_func)
(set severity $ABB.$severity_func)
(set current $ABB.$current_func)
(set future $ABB.$future_func)
(set GapIdent $ABB.$GapIdent_func)
(set GapAnalysis $ABB.$GapAnalysis_func)
(set DependAffect $ABB.$DependAffect_func)
(set DependOn $ABB.$DependOn_func)
(if (not $classes) ((set classes "None")))
(if (not $severity) ((set severity "None")))
]]