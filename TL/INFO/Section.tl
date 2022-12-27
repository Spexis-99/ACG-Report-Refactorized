[[
//// ------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Information related to a Section in a Legal Document concept. 
//// Loaded by ObjectsInfo.tl
//// Loads: ../../../_common_tl/Page-name.tl, ../../../_common_tl/SettingOutfilename.tl
//// Input variables: obj, img  , description , empty
//// ------------------------------------------------------------------------------------------

(load "TL/INFO/Clause.tl")
(set superSection $clause.Section::supersection)
(set subSection $clause.Section::subsection)

(set articles $clause.Section::article)

(set chapter $articles.Article::chapter)
(set types $clause.OBJECT/immediate__classification)
(foreach type $types
(
	(if (or(= $type "Section")(= $type "Clause"))
	((set type "Not Specified")))
)
)
]]

		<tr>
			<td width="30">
			</td>
			<td width="47%">
							<b class="title">Super Section</b><br />
							[[
								(if $superSection
									(
										(foreach super $superSection
											(
												(set obj $super)
												(load "../../../_common_tl/SettingOutfilename.tl")
												"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
											)
										)
									)
									(
										"(None)"
									)
								)
							]]
			</td>
			<td width="30">
			</td>
			<td width="47%">
							<b class="title">Sub Sections</b><br />
							[[
								(if $subSection
									(
										(foreach sub $subSection
											(
												(set obj $sub)
												(load "../../../_common_tl/SettingOutfilename.tl")
												"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
											)
										)
									)
									(
										"(None)"
									)
								)
							]]
			</td>

		</tr>
		
		<tr><td><br></td><td><br></td></tr>
		
		<tr>
			<td width="30"  style="padding-left:10px">
			</td>
			<td width="47%">
							<b class="title">Section Of Article</b><br />
					[[
							(if $articles
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach article $articles
										(
											(set obj $article)
											(load "../../../_common_tl/SettingOutfilename.tl")
											"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
										)
									)
									"(</ul>\n)"
								)
								(
									(if $superSection
										(
											(foreach super $superSection
												(
													(set superArticles $super.Section::article)
													(if $superArticles
														(
															"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
															(foreach superArticle $superArticles
																(
																	(set obj $superArticle)
																	(load "../../../_common_tl/SettingOutfilename.tl")
																	"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
																)
															)
															"(</ul>\n)"
														)
														("(None)")
													)
												)
											)
										)
										(
											"(None)"
										)
									)					
								)
							)
				
						]]
			</td>
			<td width="30">
			</td>
			<td width="47%">
							<b class="title">Section Type</b><br />
							[["($type)"]]
			</td>

		</tr>
		
		<tr><td><br></td><td><br></td></tr>
		<tr>
			<td width="30">
			</td>
			<td width="47%" colspan="3">
							<b class="title">Related Chapter</b><br />
					
					[[
						(if $chapter
							(
								(set obj $chapter)
								(load "../../../_common_tl/SettingOutfilename.tl")
								"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
							)
							("(None)")
						)
					]]
					
			</td>
		</tr>
		</table>
	</table>
	