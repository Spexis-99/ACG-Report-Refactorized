[[
    (set SDestination $obj)
(set obj_list (new-list))
(set Destination_Vision $SDestination.STRATEGIC__DESTINATION::vision__statement)
(set Current_year $SDestination.STRATEGIC__DESTINATION::target__year)
(set Destination_Goal $SDestination.STRATEGIC__DESTINATION::supported__goal)
(set Destination_SP $SDestination.STRATEGIC__DESTINATION::planned__strategy__map)
(set year $Destination_SP.STRATEGY__MAP::target__year)
(set Destination_Object year.YEAR::strategy__map.STRATEGY__MAP::supported__goals.*GOAL::drillDownObjectives)
]]