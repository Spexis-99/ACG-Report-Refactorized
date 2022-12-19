[[	
//// purpose to load the Position
//// loaded by object.tl	

(set position $obj)
(set report_path $position.$head_pos_func)
(set pos_org_unit $position.$pos_org_unit_func)
(set pos_parent_org $pos_org_unit.$parent_org_func)
(if (not $report_path) ((set report_path "غير مُحدّد")))
(if (not $pos_org_unit) ((set pos_org_unit "غير مُحدّد")))
(if (not $pos_parent_org) ((set pos_parent_org "غير مُحدّد")))

(set Position_Family $position.$pos_belong_func)
(set PosResp $Position_Family.$PosResp_func)
(set PF_super $Position_Family.$PF_super_func)
(set PF_Resp $PF_super.$PF_Resp_func)
(set Drop_Resp $Position_Family.$Drop_Resp_func)
(set PosResp (list-remove $PosResp $Drop_Resp))
(set RespRoles $PosResp.$RespRoles_func)
(set RespRoles2 $PosResp.$RespRoles2_func)
(set RespRoles (union $RespRoles $RespRoles2))

(set pos_role $position.*ACCOUNTABLE__PARTY::assignments.*ASSIGNMENT::role)
(set pos_role (union $pos_role $RespRoles))

(set pos_compt $position.$pos_compt_func)
(set positionlevCom $position.$positionlevCom_func)
(set pos_compt (union $pos_compt $positionlevCom))

(set pos_per $position.$pos_per_func)
]]