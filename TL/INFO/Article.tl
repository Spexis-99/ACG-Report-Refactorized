[[
(load "TL/INFO/Clause.tl")

(set sections $clause.$artSectFunc)
]]

			<td width="30">
					
			</td>
			<td width="47%">
							<b class="title">Related Sections</b><br />
							
							[[
							(if $sections
								(
									"(<ul class="list" style="padding-left:10px;margin-top:5px;padding-bottom:5px">\n)"
									(foreach section $sections
										(
											(set obj $section)
											(load "_common_tl/SettingOutfilename.tl")
											"(<a href =\"$(file)\"> <li> $obj </li> </a>\n)"
										)
									)
									"(</ul>\n)"
								)
								(
									"(None\n)"					
								)
							)
				
						]]
			</td>

		</tr>
		
		</table>
	</table>
	