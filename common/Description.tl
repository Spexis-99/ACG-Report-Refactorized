[[

	(set description "")
	(set longDesc $obj_me.$briefDescription_func2)
	(set briefDesc $obj_me.$briefDescription_func)

	(if $longDesc
		((set description $longDesc))
		((if $briefDesc
			((set description $briefDesc))
		))
	)

	(if (isa $obj_me "#DIAGRAM")
		(
"(<html>
	<head>
		<title>"المعلومات المتعلّقة بالرسم البياني"</title>
		<LINK REL="stylesheet" HREF=\"../../Styles/Styles.css\">
		<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	</head>
	<body STYLE=\"margin:0px;background: linear-gradient(0deg, rgba(232,167,145,0.17130602240896353) 0%, rgb(255 255 255) 100%);\" dir="rtl">
		<table>
			<tr align="right" >
				<td>
					<b class="title">المعلومات المتعلّقة بالرسم البياني</b> 
					<br><br> 
					<p style="font-size:13px;"> <b>الوصف</b> 
					<br>\n)"
					(if (not (= $description $empty))
						( 
							"($description \n)"
						)
						(
							"(غير مُحدّد\n)"
						)
					)
"(					</p>
				</td>
			</tr>\n)"

			(load "../../../../_common_tl/LinkedFiles.tl")
		)
	)

]]