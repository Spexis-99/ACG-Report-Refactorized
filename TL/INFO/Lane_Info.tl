[[
//// purpose to load the Barrier
//// loaded by object.tl

(set lane $obj)
(set events_list (new-list))
(set ReceiveTasks (new-list))
(set SendTasks (new-list))
(set ServiceTasks (new-list))
(set related_pool $lane.$related_pool_func)
(set lane_contains $lane.$lane_contains_func)
(if $lane_contains
	(
		(foreach item $lane_contains
			(
				(if (isa $item "&EVENT")	
					((set events_list (union $events_list $item)))
				)
				(if (isa $item "&SERVICE TASK")	
					((set ServiceTasks (union $ServiceTasks $item)))
				)
				(if (isa $item "&RECEIVE TASK")	
					((set ReceiveTasks (union $ReceiveTasks $item)))
				)
				(if (isa $item "&SEND TASK")	
					((set SendTasks (union $SendTasks $item)))
				)
			)
		)
	)
)

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	(set img "../Images/Lane.png")
	(load "../../../_common_tl/Page-name.tl")
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
			<td width="35">
					
			</td>
			<td style="padding-right:0px">
				<b class="title">مساحة عمل متّصلة</b><br>\n)"
					(if $related_pool 
						(
							(set obj $related_pool)
							(load "../../../_common_tl/SettingOutfilename.tl")
"(				<a href=\"$(file)\"> $related_pool </a> \n)"
						)
						(
"(				غير مُحدّد  \n)"
						)
					)
"(			</td>
		</tr>
		<tr>
			<td width="35">
				
			</td>
			<td width="100%" style="padding-right:0px;padding-bottom:10px">
				<b class="title" >أحداث</b>
				\n)"
				(if $events_list
					(
"(				<ul class="list" style="padding-right:10px;margin-top:5px;">\n)"
						(foreach event $events_list
							(
								(set obj $event)
								(load "../../../_common_tl/SettingOutfilename.tl")
"(					<a href=\"$(file)\"><li> $obj </li></a>\n)"
							)
						)
"(				</ul> \n)"
					)
					(
"(				<p style="margin-top:0px;margin-bottom:-6px;">غير مُحدّد </p>\n)"
					)
				)
"(			</td>
		</tr>
		<tr>
			<td width="35">
				
			</td>
			<td width="100%" style="padding-right:0px"> 
				<b class="title" >مهمات تواصلية</b>\n)"
		(if (and (not $ServiceTasks) (and (not $SendTasks) (not $ReceiveTasks)))
			(
"(				<br> غير مُحدّد\n)"
			)
			(
"(				<table cellpadding="0" cellspacing="0" width="95%">
					<tr>\n)"
				(if $ServiceTasks
					(
"(						<td width="33%" style="padding-right:5px;padding-bottom:0px;margin-bottom:0px">
							<table cellpadding="0" cellspacing="0">
								<tr class="thirdbox">
									<td><b class="title">مهمات خدماتية</b></td>
								</tr>\n)"
						(foreach ServT $ServiceTasks
							(
								(set obj $ServT)
								(load "../../../_common_tl/SettingOutfilename.tl")
								(set Received_MF $ServT.$inc_msg_func)
								(set ReceivedMessage $Received_MF.$transmit_func)
								(if (not $ReceivedMessage)((set ReceivedMessage $Received_MF)))
								
								(set Sent_MF $ServT.$out_msg_func)
								(set SentMessage $Sent_MF.$transmit_func)
								(if (not $SentMessage)((set SentMessage $Sent_MF)))
								
								(set CommunicatedWith $ServT.&MESSAGE__FLOW__TARGET::incoming__message__flows.&MESSAGE__FLOW::message__flow__source)
								(if (not $CommunicatedWith) ((set CommunicatedWith "غير مُحدّد")))
"(								<tr>
									<td style="padding-right:8px;padding-bottom:0px">
										<b><a href=\"$(file)\">$obj </a></b>
										\n)"
"(										<ul class="list" style="padding-right:10px;margin-top:5px;padding-bottom:15px">
											<li style="margin-right:5px"><b>الرسالة الصادرة: </b> $SentMessage </li>
											<li style="margin-right:5px"><b>الرسالة الواردة: </b> $ReceivedMessage </li>
											<li style="margin-right:5px"><b>تواصل مع: </b> $CommunicatedWith </li>
										</ul>\n)"

"(									</td>
								</tr>\n)"
							)
						)
"(							</table>
						</td>\n)"
					)
				)
				(if $SendTasks
					(
"(						<td width="33%" style="padding-right:5px;padding-bottom:0px;margin-bottom:0px">
							<table cellpadding="0" cellspacing="0">
								<tr class="thirdbox">
									<td><b class="title">مهمات إرسال</b></td>
								</tr>\n)"
						(foreach SendT $SendTasks
							(
								(set obj $SendT)
								(load "../../../_common_tl/SettingOutfilename.tl")
								(set SendT_MF $SendT.&MESSAGE__FLOW__SOURCE::outgoing__message__flows)
								(set SendT_Receiver $SendT_MF.&MESSAGE__FLOW::message__flow__target)
								(set SendT_Message $SendT_MF.&MESSAGE__FLOW::transmits)
								(if (not $SendT_Message) ((set SendT_Message $SendT_MF)))
								(if (not $SendT_Receiver) ((set SendT_Receiver "غير مُحدّد")))
"(								<tr>
									<td style="padding-right:8px;padding-bottom:0px">
										<b><a href=\"$(file)\"> $obj </a></b>
										
										<ul class="list" style="padding-right:10px;margin-top:5px;padding-bottom:15px">
											<li style="margin-right:5px"><b>الرسالة الصادرة: </b> $SendT_Message </li>
											<li style="margin-right:5px"><b>المستقبل: </b> $SendT_Receiver </li>
										</ul>
									</td>
								</tr>\n)"
							)
						)
"(							</table>
						</td>\n)"
					)
				)
				(if $ReceiveTasks
					(
"(						<td width="33%" style="padding-right:5px;padding-bottom:0px;margin-bottom:0px">
							<table cellpadding="0" cellspacing="0">
								<tr class="thirdbox">
									<td><b class="title">مهمات تلقي</b></td>
								</tr>\n)"
						(foreach RecT $ReceiveTasks
							(
								(set obj $RecT)
								(load "../../../_common_tl/SettingOutfilename.tl")
								(set RecT_MF $RecT.&MESSAGE__FLOW__TARGET::incoming__message__flows)
								(set RecT_Sender $RecT_MF.&MESSAGE__FLOW::message__flow__source)
								(set RecT_Message $RecT_MF.&MESSAGE__FLOW::transmits)
								(if (not $RecT_Message) ((set RecT_Message $RecT_MF)))
								(if (not $RecT_Sender) ((set RecT_Message "غير مُحدّد")))
"(								<tr>
									<td style="padding-right:8px;padding-bottom:0px">
										<b><a href=\"$(file)\"> $obj </a></b>
										
										<ul class="list" style="padding-right:10px;margin-top:5px;padding-bottom:15px">
											<li style="margin-right:5px"><b>الرسالة الواردة: </b> $RecT_Message </li>
											<li style="margin-right:5px"><b>مرسل: </b> $RecT_Sender </li>
										</ul>
									</td>
								</tr>\n)"
							)
						)
"(							</table>
						</td>\n)"
					)
				)
"(					</tr>
				</table>\n)"
			)
		)
"(			</td>
		</tr>
	</table>\n)"
]]