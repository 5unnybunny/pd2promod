-- Make medics unable to heal other medics and mini dozer
Hooks:PostHook(Tweakdata, "init", "promod", function(self)
	self.medic = {
		radius = 400,
		cooldown = 3,
		debug_drawing = false,
		disabled_units = {
			"spooc",
			"medic",
			"tank_mini"
		}
	}
end)