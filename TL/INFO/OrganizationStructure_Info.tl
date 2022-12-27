[[
//// purpose to load the Organization Structure
//// loaded by object.tl

//// to load the path and the outfile name

(set organization $obj_me)
(set BoardName $organization.*ACCOUNTABLE__PARTY::supervisors.*LEGAL__ORGANIZATION::has__board)

(set OutSourcing $organization.$OutSourcing_func)
(set HeadPosition $organization.$head_pos_func)
(set VicePosition $organization.$vice_pos_func)

(set orgSubordinates $organization.$sub_org_func)

(set Committee_list (new-list))
(set Team_list (new-list))
(set Office_list (new-list))
(set Department_list (new-list))
(set Section_list (new-list))
(set Division_list (new-list))

(foreach subordinate $orgSubordinates
	(
		(if(isa $subordinate "OFFICE")
			((set Office_list (union $Office_list $subordinate)))
			((if(isa $subordinate "DEPARTMENT")	
				((set Department_list (union $Department_list $subordinate)))
				((if(isa $subordinate "SECTION")
					((set Section_list (union $Section_list $subordinate)))
					((if(isa $subordinate "DIVISION")
						((set Division_list (union $Division_list $subordinate)))
						((if(isa $subordinate "COMMITTEE")
							((set Committee_list (union $Committee_list $subordinate)))
							((if(isa $subordinate "*TEAM")
								((set Team_list (union $Team_list $subordinate)))
							))
						))
					))
				))
			))	
		)	
	)
)

(set TabSelected "../Images/TabSelected.png")
(set TabNormal "../Images/TabNormal.png")

"(	<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"

	(set img "../Images/Organization.png")
	(load "../../../../_common_tl/Page-name.tl")
	
	(if (isa $organization "*LEGAL ORGANIZATION")
		( 		
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="color:#FFFFFF; font-weight:bold;padding:10px 20px 0px 20px;border-radius:0px 7px 0px 0px ;background-color:#4E763D">
				<a href="$(objectoutfile)" style="color:#FFFFFF; " onmouseover="#000000"> الإستراتيجية </a>			
			</td>
			<td style="color:#ffffffdb; font-weight:bold;padding: 10px 20px 5px 20px;border-radius: 0px 0px 0px 0px; background-color:#4e763de3;"> الهيكلية </td>
			<td style="color:#FFFFFF; font-weight:bold; padding: 5px 20px 5px 20px; border-radius: 5px 0px 0px 0px; background-color:#4E763D">
				<a href="$(LegOrgBrand)" style="color:#FFFFFF; " onmouseover="#000000"> البصمة المؤسّسيّة </a>			
			</td>
			<td width="100%"></td>
		</tr>
	</table>
	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >\n)"
		)
		(
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="background-image:url($(TabSelected)); margin:3px; color:#FFFFFF; font-weight:bold; ;"> الهيكلية </td>
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(OrgStrat)" style="color:#FFFFFF; " onmouseover="#000000"> الإستراتيجية  </a>			
			</td>
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(OrgBrand)" style="color:#FFFFFF; " onmouseover="#000000"> البصمة المؤسّسيّة </a>			
			</td>
			<td width="100%"></td>
		</tr>
	</table>
	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >\n)"
(if (not (= $description $empty))
	(
"(		<tr>
			<td colspan="2" style="padding-right:15px">
				<b class="title">الوصف: </b> $description 
			</td>
		</tr>\n)"
	)
)
		)
)
"(		<tr>
			<td width="95%">
				<table cellpadding="0" width="95%" cellspacing="0">
					<tr>
						<td width="30">
							
						</td>
						<td width="47%">
							<b class="title">الهيئة</b><br />\n)"
					(if $BoardName
						(
"(							$BoardName \n)"
						)
						(
"(							غير مُحدّد\n)"
						)
					)
"(						</td>
						<td width="35"></td>
						<td width="50%">
							<b class="title">الموارد الخارجية</b><br />\n)"
					(if $OutSourcing 
						(
"(							$OutSourcing \n)"
						)
						(
"(							غير مُحدّد\n)"
						)
					)
"(						</td>
					</tr>
					<tr>
						<td width="30">
						</td>
						<td width="47%">
							<b class="title">رئيس المنصب</b><br />\n)"
					(if $HeadPosition 
						(
"(							$HeadPosition \n)"
						)
						(
"(							غير مُحدّد \n)"
						)
					)
 "(						</td>
						<td width="35"></td>
						<td width="50%">
							<b class="title">نائب المنصب</b><br /> \n)"
					(if $VicePosition 
						(
"(							$VicePosition \n)"
						)
						(
"(							غير مُحدّد \n)"
						)
					)
"(						</td>
					</tr>
					<tr>
						<td width="30px">
							
						</td>
						<td width="47%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">المكاتب</b><br />
							 \n)"
				(if $Office_list
					(
"(							<ul class="list" style="padding-right:10px;margin-top:5px"> \n)"
						(foreach office $Office_list
							(
"(								<li> $office </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
					)
				)
"(						</td>
						<td width="30px">
							
						</td>
						<td width="50%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">الوحدات</b><br />
							 \n)"
				(if $Division_list
					(
"(							<ul class="list" style="padding-right:10px;margin-top:5px"> \n)"
						(foreach division $Division_list
							(
"(								<li> $division </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
					)
				)
"(						</td>
					</tr>
					<tr>
						<td width="30px">
							
						</td>
						<td width="47%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">الدوائر</b><br />
							 \n)"
				(if $Department_list
					(
"(							<ul class="list" style="padding-right:10px;margin-top:5px"> \n)"
						
						(foreach departement $Department_list
							(
"(								<li> $departement </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
					)
				)
"(						</td>
						<td width="30px">
							
						</td>
						<td width="50%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">الأقسام</b><br />
							 \n)"
				(if $Section_list
					(
"(							<ul class="list" style="padding-right:10px;margin-top:5px"> \n)"
						(foreach section $Section_list
							(
"(								<li> $section </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
					)
				)
"(						</td>
					</tr>
					<tr>
						<td width="30px">
							
						</td>
						<td width="47%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">الفرق</b><br />
							 \n)"
				(if $Team_list 
					(
"(							<ul class="list" style="padding-right:10px;margin-top:5px"> \n)"
						(foreach OrgTeam $Team_list
							(
"(								<li> $OrgTeam </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
					)
				)
"(						</td>
						<td width="30px">
						</td>
						<td width="50%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">الهيئات</b><br />
							 \n)"
				(if $Committee_list 
					(
"(							<ul class="list" style="padding-right:10px;margin-top:5px"> \n)"
						(foreach committe $Committee_list
							(
"(								<li> $committe </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
					)
				)
"(						</td>
					</tr>
					<tr>
						<td width="30px"></td>
						<td colspan="3" style="margin-top:5px;padding-right:0px;margin-bottom:5px">
							<b class="title">الفرق والمناصب</b> \n)"
	(if (not $Team_list)
		(
"(							<br>غير مُحدّد
						</td>
					</tr> \n)"
		)
		(
"(						</td>
					</tr>
					<tr>
						<td width="30px"></td>
						<td class="thirdbox"><b class="title" >الفرق</b> </td>
						<td width="30px"></td>
						<td class="thirdbox"><b class="title" >المناصب</b> </td>
					</tr> \n)"
			(foreach OrgTeam $Team_list
				(
					(set Posi $OrgTeam.*ACCOUNTABLE__PARTY::ACCOUNTABLE__PARTY/all__supervisors)
"(					<tr>
						<td width="30px"></td>
						<td style="padding-right:15px">
							<li> $OrgTeam </li>
						</td>\n)"
					(set Position_list (new-list))
					(foreach Pos $Posi
						((if(isa $Pos "*POSITION")
								((set Position_list (union $Position_list $Pos)))
						))
					)
"(						<td width="30px"></td>
						<td>\n)"
					(if $Position_list
						(
"(							<ul class="list" style="padding-right:10px;padding-bottom:5px;margin-top:5px"> \n)"
							(foreach TeamPos $Position_list
								(
"(									<li>$TeamPos </li> \n)"
								)
							)
"(							</ul> \n)"
						)
						(
"(							غير مُحدّد  \n)"
						)	
					)
"(						</td>
					</tr>\n)"					
				)
			)
"(					 \n)"
		)
	)
"(				</table>
			</td>
		</tr>
	</table> \n)"
		
]]
