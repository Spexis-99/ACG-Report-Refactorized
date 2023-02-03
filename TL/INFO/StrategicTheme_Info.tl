[[
	//// **************************************************************************
	//// Purpose to generate the Information related to the Strategic Theme concept
	//// loaded by ObjectsInfo.tl
	//// **************************************************************************

(set StrategicTheme $obj)
(set STheme_SM $StrategicTheme.THEME::strategy__map)
(set STheme_Obj $StrategicTheme.THEME::*objective)

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script> \n)"
	
	(set img "../Images/StrategicTheme.png")
	(load "../../../../_common_tl/Page-name.tl")
	
"(	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" > \n)"
	(if (not (= $description $empty))
		(
"(		<tr>
			<td colspan="2" style="padding-right:15px">
				<b class="title">الوصف: </b> $description 
			</td>
		</tr>\n)"
		)
)
"(		<tr>
			<td colspan="2">
				<table cellspacing="0" cellpadding="0">
					<tr>
						<td>
						</td>
						<td>
							<b class="title">الخريطة الإستراتيجية التّابعة</b><br /> \n)"
					(if $STheme_SM
						(
							(localvar obj)
							(set obj $STheme_SM)
							(load "../../../../_common_tl/SettingOutfilename.tl")
"(							<a href="$(file)"> $STheme_SM </a> \n)" 
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
						<td>
						</td>
						<td width="100%" style="padding-right:5px;padding-bottom:15px">
							<b class="title">الأهداف</b><br />
							 \n)"
				(if $STheme_Obj
					(
"(							<ul class="list" style="margin-top:5px;padding-right:10px"> \n)"
						
						(foreach objective $STheme_Obj
							(
								(localvar obj)
								(set obj $objective)
								(load "../../../../_common_tl/SettingOutfilename.tl")
"(								<a href=\"$(file)\"><li> $objective </li></a> \n)"
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
				</table>
			</td>
		</tr>
	</table> \n)"
]]	
	
