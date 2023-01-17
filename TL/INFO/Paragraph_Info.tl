[[
	//// **************************************************************************
	//// Purpose to generate the Information related to the Paragraph concept
	//// loaded by object.tl
	//// **************************************************************************

	(set para $obj)
	(set Statement $para.$lglElmStatementFunc)
	(if (not $Statement) ((set Statement "غيرمُحدّد"))) 
	(set Article $para.$paraArtFunc)
	(set Clauses $para.$paraClauseFunc)
]]