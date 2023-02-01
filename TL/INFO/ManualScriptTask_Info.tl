[[
//// **************************************************************************
//// Purpose to generate the Information related to the Manual and the Script Task concept
//// loaded by ObjectInfo.tl
//// **************************************************************************

(set MSTask $obj)
(if (isa $MSTask "&SCRIPT__TASK")
	((set type "1"))
	((set type "0"))
)

(set lane $MSTask.$flwObjLocInFunc)
(set Follows (new-list)) 
(set Previous $MSTask.$seqFlwTargetInSrcFunc) 
(set attaches $MSTask.$processActAttachFunc)
(set Follow1 $MSTask.$seqFlwSrcOutTargetFunc)
(set Follow2 $attaches.$seqFlwSrcOutTargetFunc)	
(set Follows (union $Follow1 $Follow2))
(set PrevTasks (new-list))

(if(= $type $one)
	(
		(set taskType "Script Task")
		(set script $MSTask.&SCRIPT__TASK::script)
	)
	(
		(set taskType "Manual Task")
		(set performList $MSTask.&MANUAL__TASK::performers)
	)
)
(set input $MSTask.$processActDataConsFunc.$dataInputReqDataFunc) 
(set output $MSTask.$processActDataProdFunc.$dataOutputReqDataFunc) 
(if (not $input) ((set input "غير مُحدّد")))
(if (not $output) ((set output "غير مُحدّد")))
(if (not $script) ((set script "غير مُحدّد")))

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	(set img "../Images/Tasks.png")
	(load "../../../../_common_tl/Page-name.tl")
"(	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" > \n)"
(if (not (= $description $empty))
	(
"(		<tr>
			<td colspan="2" style="padding-right:15px">
				<b class="title"> الوصف: </b> $description 
			</td>
		</tr>\n)"
	)
)
"(		<tr>
			<td colspan="2">
				<table cellspacing="0" cellpadding="0">
					<tr >
						<td></td>
						<td><b class="title">نوع: </b>$taskType </td>
					</tr>
					<tr >
						<td></td>
						<td>
							<b class="title">ممر متّصل</b><br> \n)"
					(if $lane
						(
							(set obj $lane)
							(load "../../../../_common_tl/SettingOutfilename.tl")
"(							<a href=\"$(file)\">$lane </a> \n)"
						)
						(
"(							غير مُحدّد\n)"
						)
					)
"(						</td>
					</tr>
					<tr> \n)"
		(if(= $type $one)
			(
"(						<td></td>
						<td><b class="title">سيناريو</b><br> $script </td> \n)"
			)
			(
"(						<td></td>
						<td width="100%" style="padding-right:5px;padding-bottom:15px">
							<b class="title" >مؤديين</b>
							\n)"
				(if $performList
					(
"(							<ul class="list" style="margin-top:5px;padding-right:10px">\n)"					
						(foreach perform $performList
							(
"(								<li> $perform </li> \n)"
							)
						)
"(							</ul> \n)"
					)
					(
"(							<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد</p>\n)"
					)
				)
"(						</td>\n)"
			)
		)
"(					</tr>
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
											(load "../../../../_common_tl/SettingOutfilename.tl")
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
		<tr>
			<td >
				<table cellspacing="0" cellpadding="0" width="100%">
					<tr style="margin-top:0;margin-bottom:0;padding-top:0;padding-bottom:0;">
						<td width="35"></td>
						<td style="padding-right:5px;padding-bottom:15px"> 
							<b class="title" >حدث</b>
							\n)"
			(if $attaches
				(
"(							<ul class="list" style="margin-top:5px;padding-right:10px"> \n)"
						(foreach attach $attaches
							(
								(set obj $attach)
								(load "../../../../_common_tl/SettingOutfilename.tl")
"(								<a href=\"$(file)\"><li> $attach </li></a> \n)"
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
						<td width="35"></td>
						<td >
							<b class="title" >المعطيات الازمة</b>
							
							<table width="90%">
								<tr>
									<td width="50%"><b>مدخل: </b> $input </td>
									<td width="50%"><b>مخرج: </b> $output </td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>\n)"
]]
