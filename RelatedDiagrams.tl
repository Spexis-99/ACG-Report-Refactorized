
[[
"(	<div class="bot-container">
    <div class="bottom-Hcontainer">
        <div class="bottom-heading">الرسوم البيانة التّابعة</div>
        <div class="bottom-heading">وارد في الرسوم البيانية التّالية</div>
        <div class="bottom-heading">الملفات المرتبطة</div>
    </div>
	<div class="bottom-Answers">
        <div class="bottom-ATab">
\n)"
	(set AnchorDiagram $obj_me.#OBJECT::OBJECT__All__Anchored__Diagrams)

			(if $AnchorDiagram 
				(
					(foreach Adiagram $AnchorDiagram 
						(
							(set ddiag $Adiagram)
							(set label_need "0")
							(load "SettingDiagramOutfile.tl")
							(set Rdiag_ref (append "../HTMLFiles/DiagramsFiles/" $DiagPage))
							(set Rdiag_img (append "../HTMLFiles/DiagramsFiles/" $DiagImg))
"(					<a href=\"$(Rdiag_ref)\"  > $Adiagram </a><br>\n)"
						)
					)
				)	
				(
"(					غير مُحدّد\n)"
				)              
			)						
"(				</div><div class="bottom-ATab">\n)"
		
		(set DiagContain $obj_me.#OBJECT::#contained_in)
		(if $DiagContain 
			(
				(foreach ContDiagram $DiagContain 
					(
						(set ddiag $ContDiagram)
						(set label_need "0")
						(load "SettingDiagramOutfile.tl")
						(set Cdiag_ref (append "../HTMLFiles/DiagramsFiles/" $DiagPage))
						(set Cdiag_img (append "../HTMLFiles/DiagramsFiles/" $DiagImg))
"(					<a href=\"$(Cdiag_ref)\" > $ContDiagram </a><br>)"
					)
				)
			)
			(
				"(غير مُحدّد\n)"
			)					
		)
				
"(				</div>\n)"

]]