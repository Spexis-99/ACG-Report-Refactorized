[[
    (set mission $obj)
    (set Mission_Org $mission.$missionOrgEttFunc)
    (set Mission_Vision $Mission_Org.$accPartyVisFunc)
    ////(set Mission_Vision $mission.$missionVisFunc)
    (set Mission_Principle $mission.$stratElmGuidPrincFunc)
    (set Sub_Mission $mission.$missionSubMissionFunc)
    (set Super_Mission $mission.$missionMainMissionFunc)
    (load "HTML/INFO/Mission.html")
]]