[[
    (set section $obj)
    (set Section_Name $section.$objNameFunc)
    (set Section_head_pos $section.$orgHeadPosFunc)
    (set Section_positions $section.$orgHeadPosFunc.$accPartySubordFunc)
    ////(set Section_Activities $section.#OBJECT::processes__described.#BUSINESS__ACTIVITY::subactivities)
    (set Section_Activities $obj.$accPartyOrgProcessFunc)
    (set Section_Roles_Resp $section.*ACCOUNTABLE__PARTY::responsibilities__/required)
    (set Section_Desc $section.$objBriefDescFunc)
    (set Section_Services $section.$accPartySerOwnedFunc)
    ////(set Section_App $section.*ACCOUNTABLE__PARTY::Applications__owned)
    (set Section_App $obj.*ACCOUNTABLE__PARTY::capabilities__owned.*CAPABILITY::depends__on)
    (load "HTML/INFO/section.html")

]]