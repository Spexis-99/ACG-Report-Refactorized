[[
	

	
	
    




////Competency
	(set CompetencyClass "COMPETENCY")
	(set CompetencyInstances $CompetencyClass.$classInstancesFunc)

////Competency
	(if (= $Competency_Flag "1")
		(
			(foreach CompetencyInstance $CompetencyInstances
				(
					(set obj $CompetencyInstance)
					(set C_AcquireFile (append $class (append "Acquire_" (append $sur ".html"))))
					(set C_ApplyFile (append $class (append "Apply_" (append $sur ".html"))))
					(set C_LeverageFile (append $class (append "Leverage_" (append $sur ".html"))))
					(set C_VisionFile (append $class (append "Visionary_" (append $sur ".html"))))
					(outfile $C_AcquireFile)(load "TL/SECTIONS/Header.tl")(load "../../../../_common_tl/Description.tl")
					(set C_Level "Acquiring")(load "TL/INFO/Competency_Info.tl")(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					(outfile $C_ApplyFile)
					(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Applying")(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					(outfile $C_LeverageFile)(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Leveraging")(load "TL/INFO/Competency_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(load "../../../../_common_tl/LinkedFiles.tl")
					(outfile $C_VisionFile)(load "TL/SECTIONS/Header.tl")
					(load "../../../../_common_tl/Description.tl")
					(set C_Level "Visioning")
					(load "TL/INFO/Competency_Info.tl")
				)
			)
		)
	)


////Law
	(set LawClass "LAW") ?
	(set LawInstances $LawClass.$classInstancesFunc)	

////Law
	(if (= $Law_Flag "1")
		(
			(foreach lawInstance $lawInstances
				(
					(set obj $lawInstance)
					(set LawStructure (append (append (append $class "2_") $sur) ".html"))	
					(set savedobj $obj)
					(load "TL/INFO/LawGeneral_Info.tl")
					(load "../../../../_common_tl/RelatedDiagrams.tl")
					(set LinkedF "1")
					(load "../../../../_common_tl/LinkedFiles.tl")
					(set obj $savedobj)
					(outfile $LawStructure)
					(load "TL/SECTIONS/Header.tl")
					(load "TL/INFO/LawStructure_Info.tl"))
			)
		)
	)



    ]]