[[
//// purpose to load the Organization Structure
//// loaded by object.tl

//// to load the path and the outfile name

(set organization $obj_me)
(set culturevariable "Culture ")
(set culture $organization.$culture_func)		  
(set CultureElements $organization.*ORGANIZATION::Live.$(culturevariable)::composedOf)


(set TabSelected "../Images/TabSelected.png")
(set TabNormal "../Images/TabNormal.png")

"(<body style="margin:0px; font-size:14px" dir="rtl">
	<script type="text/javascript" src="../Scripts/wz_tooltip.js"></script>\n)"

	(set img "../Images/Organization.png")
	(load "Page-name.tl")
	
(if (isa $organization "*LEGAL ORGANIZATION")
		( 		
"(	<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(objectoutfile)" style="color:#FFFFFF; " onmouseover="#000000"> الإستراتيجية </a>			
			</td>
			<td style="background-image:url($(TabNormal)); margin:3px; color:#FFFFFF; font-weight:bold; ;">
				<a href=\"$(LegOrgStruct)\" style="color:#FFFFFF; " onmouseover="#000000">الهيكلية</a>			
			</td>
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(LegOrgBrand)" style="color:#FFFFFF; " onmouseover="#000000"> البصمة المؤسّسيّة </a>			
			</td>
			<td style="background-image:url($(TabSelected)); margin:3px; color:#FFFFFF; font-weight:bold; ;">
				 الثقافة المؤسسية </td>
			<td width="100%"></td>
		</tr>
	</table>)"
	
		)
		(
"(<table cellpadding="0" cellspacing="0" width="95%" align="center" height="30px" style="margin-bottom:-5px">
		<tr >
			<td style="background-image:url($(TabNormal)); margin:3px; color:#FFFFFF; font-weight:bold; ;">
				<a href=\"$(LegOrgStruct)\" style="color:#FFFFFF; " onmouseover="#000000">الهيكلية</a>			
			</td>
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(OrgStrat)" style="color:#FFFFFF; " onmouseover="#000000"> الإستراتيجية  </a>			
			</td>
			<td style="background-image:url($(TabNormal)); background-repeat:repeat-x; margin:3px; color:#FFFFFF; font-weight:bold; ">
				<a href="$(OrgBrand)" style="color:#FFFFFF; " onmouseover="#000000"> البصمة المؤسّسيّة </a>			
			</td>
			<td style="background-image:url($(TabSelected)); margin:3px; color:#FFFFFF; font-weight:bold; ;">
				 الثقافة المؤسسية </td>
			<td width="100%"></td>
		</tr>
	</table>)"
		)
)
	
"(<table class="firstbox" align="center" cellspacing="0" cellpadding="0" >\n)"
(if (not (= $description $empty))
	(
"(		<tr>
			<td colspan="2" style="padding-right:15px">
				<b class="title"> الوصف: </b> $description 
			</td>
		</tr>\n)"
	)
)
			"(<tr>
				<td colspan="2">)"
	
(foreach CultureElt $CultureElements	
		(							
			"(<table cellspacing="0" cellpadding="0" width="95%">
				<tr>
								<td>
									
								</td>
						<td width="100%"> <b class="title" > عنصر الثقافة المؤسسية : $CultureElt </b><br />
                            	<table cellpadding="0" cellspacing="0" width="98%">
                                	<tr>
                                        <td >
                                        	<table cellpadding="0" cellspacing="0" width="98%">
                                            	<tr>
                                                	<td>
                                                    	
                                                    </td>
                                                    <td width="100%"> <b class="title" > مدلولات عناصر الثقافة المؤسسية </b><br /></td>
                                                </tr>)"
				(set Implications $CultureElt.Culture__Element::impliedBy)
						(if $Implications
								(
                                               "( <tr>
                                                	<td colspan="5">
                                                    	<ul class="list">)"
														
											(foreach CI $Implications
												(
														"(<b><li> $CI </b></li>)"
												)
											)
                                                            
                                                      "( </ul>)"
								)

								(
									"(<tr><td colspan="5">
									<ul class="list" style="padding-right:10px;margin-top:5px;"><b><li> غير محدد </b></li>
									</ul>)"
								)
						)    	
										"(</td></tr></table>
							</td>
						</tr>
					</table>
					</td>
						</tr>
					</table>)"
	)				
)					
"(</td>
</tr></table>)"						                 
]]
