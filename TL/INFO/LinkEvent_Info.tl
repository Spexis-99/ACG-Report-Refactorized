[[
(set link $obj)

(set link_lane $link.$flwObjLocInFunc )
(if (isa $link "&START EVENT LINK")
	(
	    (set link_image "../Images/Link-start.png")
		(set msg_td "رسالة")
		(set party_td "مرسل")
		(set link_flow $link.&msgFlwTargetInFunc )
		(set link_msg $link_flow.$msgFlwTransmitsFunc )
		(set link_party $link_flow.$msgFlwSrcFunc )
	)
	(
		(if (isa $link "&INTERMEDIATE EVENT LINK")
			(
		        (set link_image "../Images/Link-intermediate.png")	
				(set msg_td "الرسالة الواردة")
				(set party_td "مرسل")
				(set link_flow $link.$msgFlwTargetInFunc )
				(set link_msg $link_flow.$msgFlwTransmitsFunc )
				(set link_party $link_flow.$msgFlwSrcFunc )
			)
			(
				(if (isa $link "&END EVENT LINK")
					(
					    (set link_image "../Images/Link-end.png")
						(set msg_td "رسالة مرسلة")
						(set party_td "المستقبل")
						(set link_flow $link.$msgFlwSrcOutFunc )
						(set link_msg $link_flow.$msgFlwTransmitsFunc )
						(set link_party $link_flow.$msgFlwTargetFunc )
					)
				)
			)
		)
	)
)



"(<body style="margin:0px; font-size:14px"  dir="rtl" >
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"
	(set img $link_image)
	(load "_common_tl/Page-name.tl")
"(	<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >)"
(if (not (= $description $empty))
	(
"(		<tr>
			<td colspan="2" style="padding-right:15px">
				<b class="title">الوصف: </b> $description 
			</td>
		</tr>\n)"
	)
)
			"(<tr>
				<td colspan="2">
					<table cellspacing="0" cellpadding="0">
						<tr >
							<td>
									</td>
							<td> <b class="title">الطرف المفعل</b><br>\n)"
								(if $link_lane
							(
								(set obj $link_lane)
								(load "_common_tl/SettingOutfilename.tl")
"(								<a href=\"$(file)\"> $obj </a>)"
							)
							(
"(								غير مُحدّد \n)"
							)
						)
                        "( </td>
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
							<td colspan="2"> <b class="title">$(msg_td) </b><br>\n)"
								(if $link_msg
							(
								(set obj $link_msg)
								(load "_common_tl/SettingOutfilename.tl")
                                 "($obj \n)"
							)
							(
"(								غير مُحدّد \n)"
							)
						)	
								
								"(
								</td>
						</tr>
						 <tr >
							<td></td>
							<td>
							
							<b class="title">$(party_td): </b>\n)"
								(if $link_party 
								(
								(set obj $link_party)
								(load "_common_tl/SettingOutfilename.tl")
"(								<a href=\"$(file)\"> $obj </a>  \n)"
							)
							(
"(غير مُحدّد \n)"
							)
						)
																
								
					 "(
					 </td>	
						</tr>
					</table>
				</td>
			</tr>
		</table>
		)"
]]		
		