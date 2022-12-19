[[
//// --------------------------------------------------------------------------------------------------------------
//// Purpose: This tl generate the description "long and brief" exist in a object or diagram in a new windows page. 
//// Loaded by TL/CORE/GenerateReport.tl
//// Input Variables: gen_diag_objects ,zero, empty, one 
//// ---------------------------------------------------------------------------------------------------------------

	(foreach gen_obj $gen_diag_objects
		(
			(set obj_name (label $gen_obj))
			(set obj_doc $gen_obj.$obj_doc_func)
			(set nb_docs (numberin $obj_doc))
			(set longDesc $gen_obj.$briefDescription_func2)
			(set briefDesc $gen_obj.$briefDescription_func)
			(if (or (> $nb_docs $zero) (or (and $longDesc (not (= $longDesc $empty))) (and $briefDesc (not (= $briefDesc $empty)))))
				(
					(set sur_Doc (surrogate $gen_obj))	
					(set docfilename (append $sur_Doc "_Document.html"))
					(outfile $docfilename)
					(if (isa $gen_obj "#DIAGRAM")
						(
							(set cssStyle "../../Styles/Styles.css")
							(set jsScript "../../Scripts/wz_tooltip.js")
						)
						(	
							(set cssStyle "../Styles/Styles.css")
							(set jsScript "../Scripts/wz_tooltip.js")
						)
					)
"(<html>
	<head>
		<title>Object Documents</title>
		<LINK REL="stylesheet" HREF=\"$(cssStyle)\">
		<meta http-equiv=Content-Type content="text/html; charset=utf-8">
	</head>
	<body STYLE=\"margin:0px;background-color:#CCEBED;\">
	<script type="text/javascript" src=\"$(jsScript)\"></script>
		<table width="100%" height="100%">
			<tr height="98%">	
				<td valign="top">
					<p style="font-size:14px; padding-top:10px">
						<center> <strong> $obj_name </strong></center>
					</p>\n)"
			(if (and $longDesc $briefDesc)
				(
"(					<b class="title"> Description: </b>
					<ul style="margin-top:5px">
						<li style="font-size:14px;margin:0px"> $briefDesc </li>
						<li style="font-size:14px;margin:0px"> $longDesc </li>
					</ul>\n)"
				)
				(
					(if $briefDesc
						(
"(					<b class="title"> Description: </b>				
					<p style="font-size:14px;margin:5px">$briefDesc </p> \n)"
						)
					)
					(if $longDesc
						(
"(					<b class="title"> Description: </b>	
					<p style="font-size:14px;margin:5px">$longDesc </p> \n)"
						)
					)
				)
			)
			(if (> $nb_docs $one)
				(
"(					<b class="title"> Internal Documents: </b>
					<ul style="margin-top:5px">\n)"
				(foreach doc $obj_doc
					(
"(						<li style="font-size:14px;margin:0px">$doc </li>\n)"
					)
				)
"(					</ul>\n)"
				)
				(
					(if (and (= $nb_docs $one) (not (= $obj_doc $empty)))
						(
"(					<b class="title"> Internal Documents: </b>
					<p style="font-size:14px;margin:5px">$obj_doc </p>\n)"
						)
					)
				)
			)
"(				</td>
			</tr>
			<tr>
				<td valign="bottom">
					<a href=\"javascript:window.close()\" style="font-size:13px;"><center>Close Window</center></a>
				</td>
			</tr>
		</table>
	</body>
</html>)"
				)
			)
		)
	)
]]