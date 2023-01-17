[[
    (set Section_Name $obj.$objNameFunc)
    (set Section_head_pos $obj.$orgHeadPosFunc)
    (set Section_positions $obj.$orgHeadPosFunc.$accPartySubordFunc)
    ////(set Section_Activities $obj.$accPartySubordFunc.#OBJECT::processes__described)
    (set Section_Activities $obj.$accPartyOrgProcessFunc)
    (set Section_Roles_Resp $obj.*ACCOUNTABLE__PARTY::responsibilities__/required)
    (set Section_Desc $obj.$objBriefDescFunc)
    (set Section_Services $obj.$accPartySerOwnedFunc)
    (set Section_App $obj.*ACCOUNTABLE__PARTY::capabilities__owned.*CAPABILITY::depends__on)
    (set Dep_Sections $obj.$accPartySubordFunc)
    (load "HTML/INFO/Department.html")

]]