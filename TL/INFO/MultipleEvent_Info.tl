[[
	//// **************************************************************************
	//// Purpose to generate the Information related to the Multiple Event concept
	//// loaded by ObjectsInfo.tl
	//// **************************************************************************

(set multiple $obj)
(set multiple_lane $multiple.$flwObjLocInFunc)
(if (isa $multiple "&START EVENT MULTIPLE")
	(
		(set multiple_img "../Images/Multiple-Start.png")
		(set msg_td "رسالة")
		(set party_td "مرسل")
		(set multiple_flow $multiple.$msgFlwTargetInFunc)
		(set multiple_msg $multiple_flow.$msgFlwTransmitsFunc)
		(set multiple_party $multiple_flow.$msgFlwSrcFunc)
	)
	(
		(if (isa $multiple "&INTERMEDIATE EVENT MULTIPLE")
			(
				(set multiple_img "../Images/Multiple-intermediate.png")
				(set msg_td "الرسالة الواردة")
				(set party_td "مرسل")
				(set multiple_flow $multiple.$msgFlwTargetInFunc)
				(set multiple_msg $multiple_flow.$msgFlwTransmitsFunc)
				(set multiple_party $multiple_flow.$msgFlwSrcFunc)
			)
			(
				(if (isa $multiple "&END EVENT MULTIPLE")
					(
						(set multiple_img "../Images/Multiple-End.png")
						(set msg_td "الرسالة الصادرة")
						(set party_td "المستقبل")
						(set multiple_flow $multiple.$msgFlwSrcOutFunc)
						(set multiple_msg $multiple_flow.$msgFlwTransmitsFunc)
						(set multiple_party $multiple_flow.$msgFlwTargetFunc)
					)
				)
			)
		)
	)
)

"(	<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	(set img $multiple_img)
	(load "_common_tl/Page-name.tl")
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
						<td>
							
						</td>
						<td> 
							<b class="title">الطرف المفعل</b><br>\n)"
						(if $multiple_lane
							(
								(set obj $multiple_lane)
								(load "_common_tl/SettingOutfilename.tl")
"(								<a href=\"$(file)\"> $obj </a> \n)"
							)
							(
"(								غير مُحدّد\n)"
							)
						)
"(						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<table cellspacing="0" cellpadding="0" width="95%">
					<tr >
						<td width="15px">
								
						</td>
						<td> 
							<b class="title">$(msg_td)</b> <br>\n)"
						(if $multiple_msg
							(
								(set obj $multiple_msg)
								(load "_common_tl/SettingOutfilename.tl")
"(								$obj \n)"
							)
							(
"(								غير مُحدّد\n)"
							)
						)
"(						</td>
					</tr>
					<tr >
						<td></td>
						<td> 
							<b class="title">$(party_td): </b> \n)"
						(if $multiple_party
							(
								(set obj $multiple_party)
								(load "_common_tl/SettingOutfilename.tl")
"(								$obj \n)"
							)
							(
"(								غير مُحدّد\n)"
							)
						)
"(						</td>	
					</tr>
				</table>
			</td>
		</tr>
	</table>\n)"
]]