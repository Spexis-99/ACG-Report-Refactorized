[[
//// **************************************************************************
//// Purpose to generate the Information related to the Article concept
//// loaded by object.tl
//// **************************************************************************

(set Article $obj)
(set Statement $Article.$Statement_func)
(if (not $Statement) ((set Statement "غيرمُحدّد"))) 
(set Laws $Article.$Laws_func)
(set Paraghraphs $Article.$Paraghraphs_func)
]]