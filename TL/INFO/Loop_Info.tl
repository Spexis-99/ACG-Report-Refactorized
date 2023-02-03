[[
//// purpose to load the Barrier
//// loaded by object.tl

(set loop $obj)
(set related_lane $loop.$flwObjLocInFunc)
(set recurrence_nb $loop.$stdLoopMaxFunc)
(set condition $loop.$stdLoopCondFunc)

(set Previous $loop.$seqFlwTargetInSrcFunc) 
(set Follows $loop.$seqFlwSrcOutTargetFunc)	
(set PrevTasks (new-list))

(set data_input $loop.$processActDataConsFunc.$dataInputReqDataFunc) 
(set data_output $loop.$processActDataProdFunc.$dataOutputReqDataFunc) 
(if (not $input) ((set input "غير مُحدّد")))
(if (not $output) ((set output "غير مُحدّد")))

"(	<body style="margin:0px; font-size:14px">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	(set img "../Images/Activity_Looping.png")
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
				<table cellspacing="0" cellpadding="0" width="95%" >
					<tr>
						<td> 
								
						</td>
						<td colspan="2"> 
							<b class="title">ممر متّصل</b><br>\n)"
					(if $related_lane
						(
							(localvar obj)
							(set obj $related_lane)
							(load "../../../../_common_tl/SettingOutfilename.tl")
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
						<td width="50%">
							<b class="title">عدد التكرار: </b>)" (if $recurrence_nb ("($recurrence_nb \n)") ("(غير مُحدّد \n)"))
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
											(localvar obj)
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
			<td colspan="2">
				<table cellspacing="0" cellpadding="0" width="100%">
					<tr style="margin-top:0;margin-bottom:0;padding-top:0;padding-bottom:0;">
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
	</table> \n)"
]]