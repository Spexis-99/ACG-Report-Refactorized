[[
	(if (= $label_need $one)
		(
			(set DiagLabel (label $ddiag))
			(set DiagName (classname $DiagLabel))
		)
		(
			(set DiagName (classname $ddiag))
		)
	)
	(set ddiag_sur (surrogate $ddiag))

	(set DiagImg (append "_" (append $ddiag_sur ".jpeg")))
	(set ImgRef (append "../DiagramsFiles/" $DiagImg))
	
	(set DiagFile (append $DiagName (append "_" (append $ddiag_sur ".html"))))
	(set DiagPage (append $DiagName (append "_" (append $ddiag_sur "Page.html"))))
	
    (set DF_file (append $DiagName (append "_" (append $ddiag_sur "_DF.html"))))
	(set DiagRef (append "../DiagramsFiles/" $DiagPage))
	(set BannerRef (append "HTMLFiles/DiagramsFiles/" $DiagPage))
	(set DiagRef2 (append "DiagramsFiles/" $DiagPage))

]]