-- 0.2s Grace Period (becomes vanilla .35s when your armor is broken)
Hooks:PostHook(PlayerTweakData, "_set_sm_wish", "promod", function (self)
	self.damage.MIN_DAMAGE_INTERVAL = 0.2
end)

-- 3.5s Armor regen time insated of 4s
-- Make the regen time identical in offline mode
Hooks:PostHook(PlayerTweakData, "init", "promod", function (self)
	self.damage.REGENERATE_TIME = 2.5 
end)
function PlayerTweakData:_set_singleplayer()
	self.damage.REGENERATE_TIME = 2.5
end