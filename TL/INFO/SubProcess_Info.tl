[[
//// **************************************************************************
//// Purpose to generate the Information related to the Sub-Process concept
//// loaded by ObjectInfo.tl
//// **************************************************************************

(set Subproc $obj)
(set lane $Subproc.&FLOW__OBJECT::located__in ) 
(set Previous $Subproc.&SEQUENCE__FLOW__TARGET::incoming__sequence__flows.&SEQUENCE__FLOW::sequence__flow__source) 
(set Follows $Subproc.&SEQUENCE__FLOW__SOURCE::outgoing__sequence__flows.&SEQUENCE__FLOW::sequence__flow__target)	
(set PrevTasks (new-list))

(if (isa $Subproc "&TRANSACTION")
	((set subproc_img "../Images/Transaction.png"))
	((set subproc_img "../Images/Sub-process.png"))
)

(set Imsgflow "")
(set Omsgflow "")
(set Imsgflow $Subproc.&MESSAGE__FLOW__TARGET::incoming__message__flows )

(if (not (= $Imsgflow $empty))
	(
		(set sender $Imsgflow.&MESSAGE__FLOW::message__flow__source )
		(set Smsg $Imsgflow.&MESSAGE__FLOW::transmits )
	)

)

(set Omsgflow $Subproc.&MESSAGE__FLOW__SOURCE::outgoing__message__flows )
(if (not (= $Omsgflow $empty))
	(
		(set receiver $Omsgflow.&MESSAGE__FLOW::message__flow__target )
		(set Rmsg $Omsgflow.&MESSAGE__FLOW::transmits )
	)
)

(set input $Subproc.&PROCESS__ACTIVITY::data__of__consumption.&DATA__INPUT::required__data) 
(set output $Subproc.&PROCESS__ACTIVITY::data__in__production.&DATA__OUTPUT::produced__data) 
(if (not $output) ((set output "غير مُحدّد")))
(if (not $input) ((set input "غير مُحدّد")))

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	(set img $subproc_img)
	(load "../../../../_common_tl/Page-name.tl")
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
			<td colspan="2">
				<table cellspacing="0" cellpadding="0">
					<tr >
						<td></td>
						<td>
							<b class="title">رسالة</b><br>\n)"
			(if (and (not $Smsg) (not $Rmsg))
				(
"(							غير مُحدّد\n)"
				)
				(
					(if $Smsg
						(
"(							<table cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<b> $Smsg </b>
										
										<b> مرسل: </b> $sender
									</td>
								</tr>
							</table>\n)"
						)
					)
					(if $Rmsg
						(
"(							<table cellpadding="0" cellspacing="0">
								<tr>
									<td>
										<b> $Rmsg </b>
										
										<b> مستقبل: </b> $receiver
									</td>
								</tr>
							 </table>\n)"
						)
					)
				)			            
			)				                
"(						</td>
					</tr>
					<tr >
						<td></td>
						<td>
							<b class="title">ممر متّصل</b><br> \n)"
					(if $lane
						(
							(localvar obj)
							(set obj $lane)
							(load "../../../../_common_tl/SettingOutfilename.tl")
"(							<a href=\"$(file)\">$lane </a> \n)"
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
	</table>\n)"
]]
