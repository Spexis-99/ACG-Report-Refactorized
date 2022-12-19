[[
    (set Section_Name $obj.$name_func)
    (set Section_head_pos $obj.$head_pos_func)
    (set Section_positions $obj.$head_pos_func.$sub_org_func)
    ////(set Section_Activities $obj.$sub_org_func.#OBJECT::processes__described)
    (set Section_Activities $obj.*ACCOUNTABLE__PARTY::Organization__process)
    (set Section_Roles_Resp $obj.*ACCOUNTABLE__PARTY::responsibilities__/required)
    (set Section_Desc $obj.$briefDescription_func)
    (set Section_Services $obj.*ACCOUNTABLE__PARTY::Services__owned)
    (set Section_App $obj.*ACCOUNTABLE__PARTY::capabilities__owned.*CAPABILITY::depends__on)
    (set Dep_Sections $obj.$sub_org_func)
    (load "HTML_Files/Department.html")

]]