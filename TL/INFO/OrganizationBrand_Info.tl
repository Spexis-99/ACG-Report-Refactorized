[[
//// purpose to load the Organization 
//// loaded by object.tl

//// to load the path and the outfile name

(set organization $obj_me)
(set Org_Essence $organization.$OrgEssenceFunc)
(set Org_History $organization.$brandHistFunc)
(set Org_USP $organization.$brandUniqSellPropFunc)
(set Org_Promise $organization.$brandPromiseFunc)
(set Org_BrandPos $organization.$brandPosFunc)
(set Org_WinTheme $organization.$brandWinThemeFunc)
(set Org_BrandPillars $organization.$brandBPFunc)
(set Org_BrandValues $organization.$accPartyValFunc)
(set Org_BrandServ $organization.$OrgSerFunc)
(set Org_BrandPerson $organization.$brandBrandPersoFunc)

(set TabSelected "../Images/TabSelected.png")
(set TabNormal "../Images/TabNormal.png")


"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	
(set img "../Images/Organization.png")
(load "_common_tl/Page-name.tl")
		
(if (isa $organization "*LEGAL ORGANIZATION")
	( 
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="color:#FFFFFF; font-weight:bold;padding:10px 20px 0px 20px;border-radius:0px 7px 0px 0px ;background-color:#4E763D;">
				<a href=\"$(objectoutfile)\" style="color:#FFFFFF; " onmouseover="#000000"> الإستراتيجية </a>
			</td>
			<td style="color:#FFFFFF; font-weight:bold;padding: 10px 20px 5px 20px;border-radius: 0px 0px 0px 0px; background-color:#4E763D;">
				<a href=\"$(LegOrgStruct)\" style="color:#FFFFFF; " onmouseover="#000000">الهيكلية</a>			
			</td>
			<td style="color:#ffffffdb; font-weight:bold; padding: 5px 20px 5px 20px; border-radius: 5px 0px 0px 0px; background-color:#4e763de3">البصمة المؤسّسيّة</td>
			<td width="100%"></td>
		</tr>
	</table>\n)"
	)
	(
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href=\"$(objectoutfile)\" style="color:#FFFFFF; " onmouseover="#000000"> الهيكلية </a>			
			</td>
			<td style="background-image:url($(TabNormal)); margin:3px; color:#FFFFFF; font-weight:bold; ;">
				<a href=\"$(OrgStrat)\" style="color:#FFFFFF; " onmouseover="#000000">الإستراتيجية </a>
			</td>
			<td style="background-image:url($(TabSelected)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">البصمة المؤسّسيّة</td>
			<td width="100%"></td>
		</tr>
	</table>\n)"
	)
)
		
"(	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >
		<tr>
			<td width="40"></td>
			<td width="46%"><b class="title">الجوهر</b><br />)"(if $Org_Essence ("($Org_Essence)")("(غير مُحدّد)"))"(</td>
			<td></td>
			<td width="46%"><b class="title">التاريخ</b><br />)"(if $Org_History ("($Org_History)")("(غير مُحدّد)"))"(</td>
		</tr>
		<tr>
			<td width="40"></td>
			<td><b class="title">عرض بيع فريد</b><br />)"(if $Org_USP ("($Org_USP)")("(غير مُحدّد)"))"(</td>
			<td ></td>
			<td><b class="title">العهد</b><br />)"(if $Org_Promise ("($Org_Promise)")("(غير مُحدّد)"))"(</td>
		</tr>
		<tr>
			<td width="40"></td>
			<td><b class="title">تموضع البصمة المؤسسية</b><br />)"(if $Org_BrandPos ("($Org_BrandPos)")("(غير مُحدّد)"))"(</td>
			<td ></td>
			<td><b class="title">المواضيع الرابحة</b><br />)"(if $Org_WinTheme ("($Org_WinTheme)")("(غير مُحدّد)"))"(</td>
		</tr>
		<tr>
			<td width="40px"></td>
			<td style="padding-right:5px;padding-bottom:15px"><b class="title">قيم البصمة المؤسسية</b><br />
			  \n)"
	(if $Org_BrandValues
		(
"(				<ul class="list" style="margin-top:5px;padding-right:10px">\n)"
			(foreach value $Org_BrandValues
				(
"(					<li>$(value)</li>\n)"
				)
			)
"(				</ul>\n)"
		)
		(
			"(<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p> \n)"
		)
	)
"(			</td>
			<td ></td>
			<td style="padding-right:5px;padding-bottom:15px">
				<b class="title">أعمدة البصمة المؤسسية</b><br />
				\n)"
	(if $Org_BrandPillars
		(
"(				<ul class="list" style="margin-top:5px;padding-right:10px">\n)"
			(foreach pillar $Org_BrandPillars
				(
					(set obj $pillar)
					(load "_common_tl/SettingOutfilename.tl")
"(					<a href=\"$(file)\"><li>$(obj)</li></a>\n)"
				)
			)
"(				</ul>\n)"
		)
		(
			"(<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p>\n)"
		)
	)
"(			</td>
		</tr>
		<tr>
			<td width="40px"></td>
			<td>
				<b class="title">خدمات البصمة المؤسسية والخدمات الثانوية</b><br />\n)"
	(if $Org_BrandServ
		(
"(				<table cellpadding="0" cellspacing="0" width="95%">\n)"
			(foreach service $Org_BrandServ
				(
					(set obj $service)
					(load "_common_tl/SettingOutfilename.tl")
"(					<tr>
						<td style="padding-right:5px;padding-bottom:15px">
							<a href=\"$(file)\"><b>$(obj)</b></a><br />
							\n)"
				(set subServices $service.SERVICE::sub__services) 
				(if $subServices
					(
"(							<ul class="list" style="margin-top:5px;padding-right:10px">\n)"
						(foreach subserv $subServices
							(
								(set obj $subserv)
								(load "_common_tl/SettingOutfilename.tl")
"(								<a href=\"$(file)\"><li>$(obj)</li></a>\n)"
							)
						)
"(							</ul>\n)"
					)
					(
						"(<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p>\n)"
					)
				)
"(						</td>
					</tr>\n)"
				)
			)
"(				</table>\n)"
		)
		(
			"(غير مُحدّد\n)"
		)
	)
"(			</td>
			<td width="40px"></td>
			<td style="padding-right:5px;padding-bottom:15px">
				<b class="title">شخصية البصمة المؤسسية</b><br />
				\n)"
	(if $Org_BrandPerson
		(
"(				<ul class="list" style="margin-top:5px;padding-right:10px">\n)"
			(foreach peronality $Org_BrandPerson
				(
"(					<li>$(peronality)</li>\n)"
				)
			)
"(				</ul>\n)"
		)
		(
			"(<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p>\n)"
		)
	)
"(			</td>
		</tr>
	</table>\n)"
		
]]
		
