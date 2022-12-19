[[
    (set section $obj)
    (set Section_Name $section.$name_func)
    (set Section_head_pos $section.$head_pos_func)
    (set Section_positions $section.$head_pos_func.$sub_org_func)
    ////(set Section_Activities $section.#OBJECT::processes__described.#BUSINESS__ACTIVITY::subactivities)
    (set Section_Activities $obj.*ACCOUNTABLE__PARTY::Organization__process)
    (set Section_Roles_Resp $section.*ACCOUNTABLE__PARTY::responsibilities__/required)
    (set Section_Desc $section.$briefDescription_func)
    (set Section_Services $section.*ACCOUNTABLE__PARTY::Services__owned)
    ////(set Section_App $section.*ACCOUNTABLE__PARTY::Applications__owned)
    (set Section_App $obj.*ACCOUNTABLE__PARTY::capabilities__owned.*CAPABILITY::depends__on)
    (load "HTML_Files/section.html")

]]