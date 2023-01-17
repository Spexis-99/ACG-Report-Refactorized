[[
    (set goal $obj)
    (set obj_list (new-list))
    (set Goal_SDestination  $goal.$goalStratDestFunc)
    (set Goal_CurrentYear $Goal_SDestination.STRATEGIC__DESTINATION::target__year)
    (set Goal_SP $Goal_SDestination.STRATEGIC__DESTINATION::planned__strategy__map)
    (set Goal_Year $Goal_SP.STRATEGY__MAP::target__year)
    (if (not $Goal_CurrentYear) ((set Goal_CurrentYear "غير مُحدّد")))
]]