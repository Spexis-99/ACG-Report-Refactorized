[[
//// purpose to load the Organization 
//// loaded by object.tl

//// to load the path and the outfile name

(set organization $obj_me)
(set Org_Vision $organization.$acc_party_vision_func)
(set Org_Mission $organization.$Org_Mission_func)
(set Org_Destination $Org_Vision.$Org_Destination_func)
(set Org_Principle $organization.$Org_Principle_func)

(set TabSelected "../Images/TabSelected.png")
(set TabNormal "../Images/TabNormal.png")

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	
	(set img "../Images/Organization.png")
	(load "../../../../_common_tl/Page-name.tl")
			
	(if (isa $organization "*LEGAL ORGANIZATION")
		( 
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="color:#ffffffdb; font-weight:bold;padding:10px 20px 0px 20px;border-radius:0px 7px 0px 0px ;background-color:#4e763de3">الإستراتيجية</td>
			<td style="color:#FFFFFF; font-weight:bold;padding: 10px 20px 5px 20px;border-radius: 0px 0px 0px 0px; background-color:#4E763D;">
				<a href="$(LegOrgStruct)" style="color:#FFFFFF; " onmouseover="#000000">الهيكلية</a>			
			</td>
			<td style="color:#FFFFFF; font-weight:bold; padding: 5px 20px 5px 20px; border-radius: 5px 0px 0px 0px; background-color:#4E763D">
				<a href="$(LegOrgBrand)" style="color:#FFFFFF; " onmouseover="#000000"> البصمة المؤسّسيّة </a>			
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
		(
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(objectoutfile)" style="color:#FFFFFF; " onmouseover="#000000"> الهيكلية </a>			
			</td>
			<td style="background-image:url($(TabSelected)); margin:3px; color:#FFFFFF; font-weight:bold; ;"> الإستراتيجية </td>
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(OrgBrand)" style="color:#FFFFFF; " onmouseover="#000000"> البصمة المؤسّسيّة </a>			
			</td>
			<td width="100%"></td>
		</tr>
	</table>
	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >\n)"
		)
	)
"(		<tr>
			<td width="50%">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td>
							<b class="title">الرؤية </b><br/> \n)"
					(if $Org_Vision
						(
							(set obj $Org_Vision)
							(load "../../../../_common_tl/SettingOutfilename.tl")
"(							<a href="$(file)"> $Org_Vision </a> \n)"
						)
						(
"(							غير مُحدّد \n)"
						)
					)
"(						</td>		
					</tr>
				</table>
			</td>
			<td width="50%">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td>
							<b class="title">المهمة المؤسسية </b><br /> \n)"
				(if $Org_Mission
						(
							(set obj $Org_Mission)
							(load "../../../../_common_tl/SettingOutfilename.tl")
"(							<a href="$(file)"> $Org_Mission </a> \n)"
						)
						(
"(							غير مُحدّد \n)"
						)
				)
"(						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td>
							<b class="title">الوجهة الإستراتجية </b><br/> \n)"
			(if $Org_Destination
				(
					(foreach SD $Org_Destination
						(
							(set obj $SD)
							(load "../../../../_common_tl/SettingOutfilename.tl")
"(							<a href="$(file)"> $SD </a> \n)"
						)
					)
				)
				(
"(							غير مُحدّد \n)"
				)
			)
"(						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td></td>
						<td>
							<b class="title">مبادئ القرار الإستراتيجية</b> \n)"
				(if $Org_Principle
					(
"(							<ul class="list" style="padding-bottom:5px;margin-top:5px;padding-right:10px"> \n)"
						(foreach SP $Org_Principle
							(
								(set obj $SP)
								(load "../../../../_common_tl/SettingOutfilename.tl")
"(								<li> $SP </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<br>غير مُحدّد \n)"
					)
				)	
"(						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table> \n)"
]]