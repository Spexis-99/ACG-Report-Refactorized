[[
//// **************************************************************************
//// Purpose to generate the Information related to the Responsability
//// loaded by Objectinfo.tl
//// **************************************************************************

(set Resp $obj)
(set Roles $Resp.*RESPONSIBILITY::activity__role.ACTIVITY__ROLE::defined__roles)
(set Roles2 $Resp.*RESPONSIBILITY::roles)
(set Roles (union $Roles $Roles2))
]]