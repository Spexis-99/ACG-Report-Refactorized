[[
	//// **************************************************************************
	//// Purpose to generate the Information related to the Paragraph concept
	//// loaded by object.tl
	//// **************************************************************************

	(set para $obj)
	(set Statement $para.$Statement_func)
	(if (not $Statement) ((set Statement "غيرمُحدّد"))) 
	(set Article $para.$Article_func)
	(set Clauses $para.$Clauses_func)
]]