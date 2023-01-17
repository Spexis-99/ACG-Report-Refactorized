[[
//// **************************************************************************
//// Purpose to generate the Information related to the Article concept
//// loaded by object.tl
//// **************************************************************************

(set Article $obj)
(set Statement $Article.$lglElmStatementFunc)
(if (not $Statement) ((set Statement "غيرمُحدّد"))) 
(set Laws $Article.$lglElmLawsFunc)
(set Paraghraphs $Article.$artParaFunc)
]]