[[
	(set team $obj)
	(set members $team.*TEAM::team__members)
	(set Org $team.*TEAM::organizations)
	(if (not $Org)
		((set Org $team.*ACCOUNTABLE__PARTY::supervisors))
	)
	(set roles $team.*TEAM::roles__contained)
	(set competency (new-list))
	(set competency1 (new-list))
	(set competency2 (new-list))
	
	(set LeveledCompPosition $team.*TEAM::belong__to.POSITION__FAMILY::required__leveled__competency)
	(set competency2 $LeveledCompPosition.$lvlCmptCmpt)
	(set LeveledCompRole $roles.*ROLE::required__leveled__competency)
	(set competency1 $LeveledCompRole.$lvlCmptCmpt)
	(set competency (union $competency1 $competency2))
]]