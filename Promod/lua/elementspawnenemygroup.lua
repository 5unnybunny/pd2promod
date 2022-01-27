-- Necessary for the custom spawngroup implementation
local groupsOLD = {
	"tac_shield_wall_charge",
	"FBI_spoocs",
	"tac_tazer_charge",
	"tac_tazer_flanking",
	"tac_shield_wall",
	"tac_swat_rifle_flank",
	"tac_shield_wall_ranged",
	"tac_bull_rush"
}

local twat_captain = {
	Phalanx = true,
	single_spooc = true
}

Hooks:PostHook(ElementSpawnEnemyGroup, "_finalize_values", "add_broken_spawngroups", function(self)	
	if self._values.preferred_spawn_groups and #self._values.preferred_spawn_groups == #groupsOLD and table.contains_all(self._values.preferred_spawn_groups, groupsOLD) then
		self._values.preferred_spawn_groups = {}
		for name,_ in pairs(tweak_data.group_ai.enemy_spawn_groups) do
			if not table.contains(self._values.preferred_spawn_groups, name) and not twat_captain[name] then
				table.insert(self._values.preferred_spawn_groups, name)
			end
		end
	end
end)