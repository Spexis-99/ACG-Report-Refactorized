[[
	(load "../../../_common_tl/CheckMultiAnchor.tl")
	(if (= $multi $one)
		(
			(outfile $anch_page)
"(	<html>
		<head>
			<title>Anchored Diagrams List</title>
			<link rel="stylesheet" href=\"../Styles/Styles.css\" type="text/css">
			<meta http-equiv=Content-Type content="text/html; charset=utf-8">
		</head>
		<body style="">
			<table align="center" valign="middle" border="1" style="margin:50px;width:50%; height:50%; background-color:#CCEBED;">
				<tr>
					<td>
						<b style="font-size:25px;"><center> $obj_me Anchored Diagrams </center></b><br><br>
						<b style="font-size:15px;"><center> Select the diagram you would like to view </center></b><br>
						<ul>\n)"
					(foreach anch_diag $anch_diagrams
						(
							(set ddiag $anch_diag)
							(set label_need "0")
							(load "../../../_common_tl/SettingDiagramOutfile.tl")
"(							<a href=\"../HTMLFiles/DiagramsFiles/$(DiagPage)\" target="Body"><li style="font-size:14px; margin-right:5px;">$anch_diag </li></a>\n)"
						)
					)
"(						</ul>
					</td>
				</tr>
			</table>
		</body>
	</html>\n)"
		)
	)
	
]]