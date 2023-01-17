[[
	//// needs an html file and fix some stuff to seperate html from tl (seperatehtml)
(outfile "DiagramsTree.html")


"(<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<title>Diagram Tree</title>
	<script type="text/javascript">
		function changeCols()
		  {
			parent.document.getElementById("main").cols="25,*";
			parent.document.getElementById("tree").src="HTMLFiles/DiagramsFiles/CollapsedTree.html";
		  }
	</script>
	<SCRIPT SRC=\"../../Scripts/tree.js\" LANGUAGE="JavaScript"></SCRIPT>
	<LINK REL="stylesheet" HREF=\"../../Styles/Styles.css\">
	</head>

	<body onload=\"collapseTree('mytreeL1')\" STYLE=\"margin:0px;background-color:#CCEBED;\">
		<table style="font-size:14px" cellpadding="0" cellspacing="0">
			<tr>
				<td NOWRAP>
					<A onClick="expandTree('mytreeL0'); return false;" style="cursor: pointer; margin:3 0 0 3">
					<img src="../../Images/Tree/arrowdown.png" title="Expand All" width="24" height="10" style="border:0"/></A>
					<A onClick="collapseTree('mytreeL0'); return false;" style="cursor: pointer; margin:3 0 0 0" >
					<img src="../../Images/Tree/arrowup.png" title="Collapse All" width="24" height="10" style="border:0"/></A><br/>\n)"
		(set past_d (new-list))
		(set current_cont $CurrentDiagram.#DIAGRAM::#diagram__types.DIAGRAM__TYPE::context)
"(					<ul id="mytreeL0" class="mktree" style="margin-top:4px">\n)"
		(foreach con $used_contexts
			(
				(if (= $con $current_cont)						//// to Expand the context of the view from where the report was invoked
					((set li_stat "liOpen"))
					((set li_stat "liClosed"))
				)
				(set con_diagrams $con.$ctxDiagTypeDiagFunc)	//// the Context diagrams instances
				(set tree_diagrams (intersection $diagrams_list $con_diagrams))  			//// to get the user level diagrams only
				(set tree_diagrams (list-remove $tree_diagrams $past_d))				//// to remove the diagrams that were already displayed
				(if $tree_diagrams
					(
"(						<li class="$(li_stat)" id="node3" name="$(con)">$con 
							<ul id="mktreeL2">\n)"
						(foreach diags $tree_diagrams
							(
								(set ddiag $diags)
								(set diagtyp $diags.#DIAGRAM::#diagram__types)
								(set label_need "0")
								(load "../../../../_common_tl/SettingDiagramOutfile.tl")
"(								<li id="node1"> <a href=\"$(DiagRef)\" target="Body" title=\"$(diagtyp): $(diags)\"> $diags </a> </li>\n)"
								(set past_d (union $past_d $diags))
							)
						)
"(							</ul>
						</li>\n)"	
					)
				)
				
			)
		)
		(if $OtherDiagrams
			(
"(						<li class="liClosed" id="node3" name="Other">User Defined Diagrams
							<ul id="mktreeL2">\n)"
						(foreach diags $OtherDiagrams
							(
								(set ddiag $diags)
								(set label_need "0")
								(load "../../../../_common_tl/SettingDiagramOutfile.tl")
"(								<li id="node1"> <a href=\"$(DiagRef)\" target="Body" title=\"$(diags)\"> $diags </a> </li>\n)"
							)
						)
"(							</ul>
						</li>\n)"	
			)
		)		
"(					</ul>
				</td>
			</tr>
		</table>	
	</body>
</html>)"
]]