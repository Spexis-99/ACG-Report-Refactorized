[[
//// ------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Information related to an Article in a Legal Document concept. 
//// Loaded by ObjectsInfo.tl
//// Loads: _common_tl/Page-name.tl, _common_tl/SettingOutfilename.tl
//// Input variables: obj, img  , description , empty
//// ------------------------------------------------------------------------------------------

(set clause $obj)
(set title $clause.$objBriefDescFunc)
(set targets $clause.Clause::affects)

(set docsRefers $clause.$clauseRefTo1Func)
(set clauseRefers $clause.$clauseRefTo2Func)
(set Refers (union $docsRefers $clauseRefers))

(set docsReferredBy $clause.$clauseRefBy1Func)
(set clauseReferredBy $clause.$clauseRefBy2Func)
(set ReferredBy (union $docsReferredBy $clauseReferredBy))

(set chapter $clause.Article::chapter) 
]]
<body style="margin:0px; font-size:14px">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>
	<table cellspacing="0" cellpadding="0" style="width:100%;background-image:url(../images/TopGradient.png);background-repeat:repeat-x;">
		<tr>
			<td>
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<img src="../Images/Article.png"/>
						</td>
						<td style="vertical-align:middle">
							[["($clause)"]] [[ (if $title ("( : $title)"))]]
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >
		<tr>
			<td width="30">
					<img src="../Images/30px/Link-startSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Referes To</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
							[[
							(if $Refers
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach doc $docsRefers
										(
                                            (localvar obj)
											(set obj $doc)
											(load "../../../../_common_tl/SettingOutfilename.tl")
											"(<li><a href =\"$(file)\">  $obj </a>)"
										)
									)
									(foreach clause $clauseRefers
										(
                                            (localvar obj)
											(set obj $clause)
											(load "../../../../_common_tl/SettingOutfilename.tl")
											"(<li><a href =\"$(file)\">  $obj </a> :)"
											
											(set docRefer $clause.Clause::Refers__To)
                                            (localvar obj)
											(set obj $docRefer)
											(load "../../../../_common_tl/SettingOutfilename.tl")
											"(<a href =\"$(file)\">$obj  </a></li>\n)"
										)
									)
									
									"(</ul>\n)"
								)
								(
									"(None\n)"					
								)
							)
				
						]]
			</td>
			<td width="30">
					<img src="../Images/30px/Link-startSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Refered By</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
							[[
							(if $ReferredBy
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach docBy $docsReferredBy
										(
                                            (localvar obj)
											(set obj $docBy)
											(load "../../../../_common_tl/SettingOutfilename.tl")
											"(<li><a href =\"$(file)\">  $obj </a>)"
										)
									)
									(foreach clauseBy $clauseReferredBy
										(
                                            (localvar obj)
											(set obj $clauseBy)
											(load "../../../../_common_tl/SettingOutfilename.tl")
											"(<li><a href =\"$(file)\">  $obj </a> :)"
											
											(set docRefer $clauseBy.Clause::Refered__by)
                                            (localvar obj)
											(set obj $docRefer)
											(load "../../../../_common_tl/SettingOutfilename.tl")
											"(<a href =\"$(file)\">$obj  </a></li>\n)"
										)
									)
									
									"(</ul>\n)"
								)
								(
									"(None\n)"					
								)
							)
				
						]]
			</td>

		</tr>
		<tr><td> <br><br> </td></tr>
		<tr>
			<td width="30">
					<img src="../Images/30px/Link-startSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Clause Target</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
							[[
								(if $targets
									(
										"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
										(foreach target $targets
											(
                                            	(localvar obj)
												(set obj $target)
												(load "../../../../_common_tl/SettingOutfilename.tl")
												"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
											)
										)
										"(</ul>\n)"
									)
									(
										"(None\n)"					
									)
								)
							]]
			</td>
			<td width="30">
					<img src="../Images/30px/chapterSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Exist In Chapter</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
							[[
							(if $chapter
								(
									(localvar obj)
									(set obj $chapter)
									(load "../../../../_common_tl/SettingOutfilename.tl")
									"(<a href=\"$(file)\"> $chapter </a>)"
								)
								("(None)")
							)
				
						]]
			</td>

		</tr>
		
		
			<tr><td> <br><br> </td></tr>