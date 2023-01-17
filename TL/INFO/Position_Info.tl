[[	
//// purpose to load the Position
//// loaded by object.tl	

(set position $obj)
(set report_path $position.$orgHeadPosFunc)
(set pos_org_unit $position.$posOrgFunc)
(set pos_parent_org $pos_org_unit.$accPartySupervFunc)
(if (not $report_path) ((set report_path "غير مُحدّد")))
(if (not $pos_org_unit) ((set pos_org_unit "غير مُحدّد")))
(if (not $pos_parent_org) ((set pos_parent_org "غير مُحدّد")))

(set Position_Family $position.$posBelongFunc)
(set PosResp $Position_Family.$posFamHasRespFunc)
(set PF_super $Position_Family.$posFamSupFunc)
(set PF_Resp $PF_super.$posFamHasRespFunc)
(set Drop_Resp $Position_Family.$posFamDropRespFunc)
(set PosResp (list-remove $PosResp $Drop_Resp))
(set RespRoles $PosResp.$respRoleFunc)
(set RespRoles2 $PosResp.$respActRoleDefRoleFunc)
(set RespRoles (union $RespRoles $RespRoles2))

(set pos_role $position.*ACCOUNTABLE__PARTY::assignments.*ASSIGNMENT::role)
(set pos_role (union $pos_role $RespRoles))

(set pos_compt $position.$posAllCmptFunc)
(set positionlevCom $position.$posReqLvlCmptFunc)
(set pos_compt (union $pos_compt $positionlevCom))

(set pos_per $position.$posEmpFillPosFunc)
]]