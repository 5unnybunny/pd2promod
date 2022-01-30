-- 0.15s Grace Period (becomes .3s on armor break)
Hooks:PostHook(PlayerTweakData, "_set_sm_wish", "promod", function (self)
	self.damage.MIN_DAMAGE_INTERVAL = 0.15
end)

-- 2.5s Armor regen time instead of 3s
-- Make the regen time identical in offline mode
Hooks:PostHook(PlayerTweakData, "init", "promod", function (self)
	self.damage.REGENERATE_TIME = 2.5 
end)
function PlayerTweakData:_set_singleplayer()
	self.damage.REGENERATE_TIME = 2.5
end