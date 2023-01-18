[[
//// **************************************************************************
//// Purpose to generate the Information related to the ABB
//// loaded by ObjectsInfo.tl
//// **************************************************************************

(set ABB $obj)
(set super          $ABB.$ABBParFunc)
(set children       $ABB.$ABBChildFunc) 
(set classes        $ABB.$ABBClassificatinFunc)
(set severity       $ABB.$ABBSeverityFunc)
(set current        $ABB.$ABBCurrImpProdFunc)
(set future         $ABB.$ABBFutDirProdFunc)
(set GapIdent       $ABB.$ABBGapIdFunc)
(set GapAnalysis    $ABB.$ABBGapAnalysisFunc)
(set DependAffect   $ABB.$capABBClientSuppFunc)
(set DependOn       $ABB.$DependOn_func)
(if (not $classes) ((set classes "None")))
(if (not $severity) ((set severity "None")))
]]