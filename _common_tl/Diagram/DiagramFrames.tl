[[ //// ---------------------------------------------------------------------- 	 
	//// Purpose: This tl generate the Frame for each diagram in the kbc 
	//// Loaded by _common_tl/GenerateDiagram.tl
	//// Input variables: diag_file
	//// Loads: No tl loaded
	//// ----------------------------------------------------------------------

	"(
		<html>
		<head>
			<title> $(diag) </title>
			<LINK REL="stylesheet" HREF=\"../../Styles/Styles.css\">
			<meta http-equiv=Content-Type content="text/html; charset=utf-8">
		</head>
		<frameset  rows="*" SCROLLING="AUTO" FRAMEBORDER="no">
			<frame id="Diagram" src=\"../DiagramsFiles/$(diag_file)\" frameborder="no"/>
		</frameset>
		<body>
		</body>
		</html>
	)"
]]


