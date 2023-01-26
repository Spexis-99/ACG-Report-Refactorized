[[
	(set obj $root)
	(load "_common_tl/CheckClassification.tl")
	(if (= $ObjClass $zero)
		(
			"(\nSelect another object\n)"			
		)
		(
			(set option "Object")
			(set CurrentDiagram $c-diagram)
			(load "TL/CORE/GenerateReport.tl")
		)
	)
	
	
	////(set invokedir (append (codrive) (codir "\\")))
    ////(set invokefile (append $invokedir (append "\\" $outfilename)))
	////(set InvokeStat (invoke $invokefile))
	
]]