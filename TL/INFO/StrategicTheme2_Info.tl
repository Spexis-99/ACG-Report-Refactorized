[[
//// **************************************************************************
//// Purpose to generate the Information related to the Perspective concept
//// loaded by object.tl
//// **************************************************************************

(set stratfile (append (append "StrategicTheme2_" $sur_me) ".html"))
(outfile $stratfile)
(load "TL/SECTIONS/Header.tl")
(set STheme_Obj $StrategicTheme.THEME::*objective)
(set SThemeSM_persp $StrategicTheme.THEME::strategy__map.STRATEGY__MAP::perspective)

"(<body style="margin:0px; font-size:14px" dir="rtl" style="width:97%">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>
	<table cellpadding="0" cellspacing="0" width="99%" style=" margin-left:-5px">
		<tr>
			<td>
				<table cellpadding="0" cellspacing="0" class="thirdbox" width="100%">
					<tr>
						<td width="100%"> 
							<p style="margin-top:5px; font-weight:bold">موضوع إستراتيجي $StrategicTheme: أهداف تابعة مجموعة حسب المنظور </p> 
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table cellpadding="0" cellspacing="0" bordercolor="#39889E" border="1" width="98%">\n)"
(if $STheme_Obj
	(
		(if $SThemeSM_persp
			(
				(foreach persp $SThemeSM_persp
					(
						(set obj $persp)
						(load "TL/CORE/SettingOutfilename.tl")
						(set persp_obj $persp.PERSPECTIVE::involves)
						(set ST_objectives (intersection $STheme_Obj $persp_obj))
						(if $ST_objectives
							(	
"(		<tr style="border:none">
			<td width="25" style="border:none"> 
			</td>
			<td style="padding-right:0px;padding-bottom:15px;border:none">
				<a href =\"$(file)\" target="Body"> <b>$obj </b> </a>
				<ul class="list" style="padding-right:10px;margin-top:5px;">\n)"											
			(foreach ST_obj $ST_objectives
				(
					(set obj $ST_obj)
					(load "TL/CORE/SettingOutfilename.tl")
"(					<a href=\"$(file)\" target="Body"><li>$obj </li></a>\n)"
				)
			)
"(				</ul>
			</td>
		</tr>\n)"
							)
						)
					)
				)
			)
		)
	)
	(
"(		<tr style="border:none">
			<td style="border:none">أهداف غير مُحدّدة</td>
		</tr>\n)"
	)
)
"(	</table>
	</body>
</html>
<script type="text/javascript">
    parent.window.document.getElementById("Strategic_Objectives").style.height = document.body.offsetHeight + 20;
</script>)"
]]