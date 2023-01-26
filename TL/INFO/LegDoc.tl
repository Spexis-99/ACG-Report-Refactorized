[[
//// ------------------------------------------------------------------------------------------
//// Purpose: This tl generate the Information related to the Legal Document concept. 
//// Loaded by ObjectsInfo.tl
//// Loads: _common_tl/Page-name.tl, _common_tl/SettingOutfilename.tl
//// Input variables: obj, img  , description , empty
//// ------------------------------------------------------------------------------------------

(set LegDoc $obj)

(set title $LegDoc.#OBJECT::Title)
(set issueDate $LegDoc.$lglDocIssueDateFunc)(if(not $issueDate)((set issueDate "None")))
(set publishDate $LegDoc.$lglDocPublishDateFunc)(if(not $publishDate)((set publishDate "None")))
(set signers $LegDoc.$lglDocSignerFunc)
(set description $LegDoc.#objBriefDescFunc)(if(not $description)((set description "None")))
(set type $LegDoc.$objImmClassFunc)
(if(= $type "Legal Document")((set type "Not Specified")))
(set docReplace $LegDoc.$lglDocSubrogateFunc)
(set docsReplacedBy $LegDoc.$lglDocSubrogateByFunc)

(set docsRefers $LegDoc.$lglDocRefTo2Func)
(set clauseRefers $LegDoc.$lglDocRefTo1Func)
(set Refers (union $docsRefers $clauseRefers))

(set docsReferredBy $LegDoc.$lglDocRefBy2Func)
(set clauseReferredBy $LegDoc.$lglDocRefBy1Func)
(set ReferredBy (union $docsReferredBy $clauseReferredBy))

(set articles $LegDoc.Legal__Document::article)

(set art_num (numberin $articles))
]]

<body style="margin:0px; font-size:14px">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>
	<table cellspacing="0" cellpadding="0" style="width:100%;background-image:url(../images/TopGradient.png);background-repeat:repeat-x;">
		<tr>
			<td>
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td>
							<img src="../Images/law.png"/>
						</td>
						<td style="vertical-align:middle">
							 [["($LegDoc)"]] [[ (if $title ("( : $title)"))]]
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >
		<tr>
			<td width="30">
					<img src="../Images/30px/Timer-startSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Issue Date</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
					[["($issueDate)"]]
			</td>
			<td width="30">
					<img src="../Images/30px/Timer-startSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Publish Date</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
					[["($publishDate)"]]
			</td>

		</tr>
		<tr><td><br></td><td><br></td></tr>
		<tr>
			<td width="30">
					<img src="../Images/30px/Signers.png" />
			</td>
			<td width="47%">
							<b class="title">Legal Document Signers</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
							
							[[
								(if $signers
									(
										(foreach signer $signers
											("(<li> $signer </li>)")
										)
									)
									(
										"(None)"
									)
								)
							]]
								
			</td>
			<td width="30">
					<img src="../Images/30px/DepartmentSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Legal Document Type</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
							[["($type)"]]
			</td>

		</tr>
		<tr><td><br></td><td><br></td></tr>
		<tr>
			<td width="30">
					<img src="../Images/30px/OrganizationRectSmall.png" />
			</td>
			<td width="47%" colspan="3">					
				<b class="title">Legal Document Description</b><br />
				<img src="../Images/RedUnderline.png" height="3" width="100%" />
				[["($description)"]]

			</td>
			
		</tr>
		
		<tr><td><br></td><td><br></td></tr>
		<tr>
			<td width="30">
					<img src="../Images/30px/LawSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Replace</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
						[[
							(if $docReplace
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach docReplace $docReplace
										(
											(set obj $docReplace)
											(load "_common_tl/SettingOutfilename.tl")
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
					<img src="../Images/30px/LawSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Replaced By</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
						[[
							(if $docsReplacedBy
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach docReplaced $docsReplacedBy
										(
											(set obj $docReplaced)
											(load "_common_tl/SettingOutfilename.tl")
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

		</tr>
		
		<tr><td><br></td><td><br></td></tr>
		<tr>
			<td width="30">
					<img src="../Images/30px/Link-startSmall.png" />
			</td>
			<td width="47%">
							<b class="title">Refers To  </b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
						[[
							(if $Refers
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach Refer $Refers
										(
											(set obj $LegDoc)
											(load "_common_tl/SettingOutfilename.tl")
											"(<li><a href =\"$(file)\">  $LegDoc </a> :)"
											
											
											(set obj $Refer)
											(load "_common_tl/SettingOutfilename.tl")
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
							<b class="title">Referred By</b><br />
							<img src="../Images/RedUnderline.png" height="3" width="100%" />
						[[
							(if $ReferredBy
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach Referred_by $ReferredBy
										(
											(set obj $LegDoc)
											(load "_common_tl/SettingOutfilename.tl")
											"(<li><a href =\"$(file)\">  $LegDoc </a> :)"
											
											
											(set obj $Referred_by)
											(load "_common_tl/SettingOutfilename.tl")
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
		
		<tr><td><br></td><td><br></td></tr>
		<tr>
			<td width="30" style="padding-left:10px">
					<img src="../Images/30px/articleSmall.png" />
			</td>
			<td width="47%" colspan="3">					
				<b class="title">The Number of Articles is: [["($art_num)"]]</b><br />
				
			</td>
			
		</tr>
		
	</table>