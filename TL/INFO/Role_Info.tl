[[
//// -------------------------------------------------------------------------------------------
////       the purpose of this tl is to generate the information related to the Role concept 
////       loaded by Objectinfo.tl
//// -------------------------------------------------------------------------------------------

(set Role $obj)
(set activity $Role.*ROLE::activity__role.ACTIVITY__ROLE::activities__defined__on)
(set activity2 $Role.*ROLE::duplicated__related__activities)
(set activity (union $activity $activity2))
(set category $Role.*ROLE::role__type)
(set RoleResp $Role.*ROLE::activity__role.ACTIVITY__ROLE::activity__role__responsibilities)
(set LeveledCompetencies $Role.*ROLE::required__leveled__competency)
(set RoleResp2 $Role.*ROLE::responsibilities)
(set RoleResp (union $RoleResp $RoleResp2))
(set Position $Role.*ROLE::assignments.*ASSIGNMENT::accountable__party)
(if (not $category) ((set category "غير مُحدّد")))
]]