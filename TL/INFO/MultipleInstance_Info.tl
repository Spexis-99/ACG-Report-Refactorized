[[
//// **************************************************************************
//// Purpose to generate the Information related to the Multi Instance concept
//// loaded by ObjectInfo.tl
//// **************************************************************************

(set Multiple $obj)
(set Multiple_Triglane $Multiple.$cancel_triglane_func)
(set Multiple_Condition $Multiple.$Multiple_Condition_func)

(set Previous $Multiple.$Previous_func) 
(set Follows $Multiple.$Follows_func)	
(set PrevTasks (new-list))

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	
	(set img "../Images/Multiple-instances.png")
	(load "TL/CORE/Page-name.tl")
	
"(	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >\n)"

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
			<td width="100%">
				<table cellspacing="0" cellpadding="0" width="95%" >
					<tr>
						<td> 
								
						</td>
						<td colspan="2"> 
							<b class="title">ممر متّصل</b><br>\n)"
					(if $related_lane
						(
							(set obj $related_lane)
							(load "TL/CORE/SettingOutfilename.tl")
"(							<a href=\"$(file)\"> $obj </a> \n)"
						)
						(
"(							غير مُحدّد \n)"
						)
					)
"(						</td>
					</tr>
					<tr >
						<td></td>
						<td width="50%"> 
							<b class="title">الشرط: </b>)" (if $condition ("($condition \n)") ("(غير مُحدّد \n)"))
"(						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td >
				<table cellspacing="0" cellpadding="0" width="95%">
					<tr>
						<td>
							
						</td>
						<td width="100%" style="padding-right:5px"> 
							<b class="title" >مهمات</b>
							<table cellpadding="0" cellspacing="0" width="100%" style="margin-top:10px">
								<tr class="thirdbox">
									<td width="50%" class="title">السابقة</td>
									<td width="50%" style="padding-right:0px" class="title">الاحقة</td>
								</tr>
								<tr>
									<td>\n)"
									(load "Task_PreviousTasks.tl")
							(if $PrevTasks
								(
"(										<ul class="list" style="padding-right:10px;margin-top:0px">\n)"
									(foreach prev $PrevTasks
										(
											(set obj $prev)
											(load "TL/CORE/SettingOutfilename.tl")
"(											<a href=\"$(file)\"><li> $prev </li></a>\n)"
										)
									)
"(										</ul>\n)"
								)
								(
"(										غير مُحدّد\n)"
								)
							)
"(									</td>
									<td>\n)"
								(if (not $Follows)
									(
"(										غير مُحدّد\n)"
									)
									(
"(										<ul class="list" style="padding-right:10px;margin-top:0px">\n)"
										(load "Task_Following.tl")
"(										</ul>\n)"
									)
								)
"(									</td>
								<tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>\n)"
]]