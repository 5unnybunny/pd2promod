-- Increase shield movement speed so that they can actually catch up with their teammates
Hooks:PostHook(CharacterTweakData, "_init_shield", "faster_shield", function(self, presets)
	self.shield.move_speed = presets.move_speed.lightning
end)

-- Remove cloaker charge noise
Hooks:PostHook(CharacterTweakData, "_init_spooc", "no_charge_sound", function(self, presets)
	self.spooc.spooc_sound_events = {
		detect_stop = nil,
		detect = nil
	}
	self.spooc.use_animation_on_fire_damage = true -- also make them non immune to fire
end)

-- Hopefully this fixes some instances of snipers hiding their lasers
Hooks:PostHook(CharacterTweakData, "_init_sniper", "no_suppression", function(self, presets)
	self.sniper.suppression = nil
end)

-- Make lights and fbi hrts be able to dodge like cloakers
Hooks:PostHook(CharacterTweakData, "_init", "cool_dodges", function(self, presets)
	self.city_swat.dodge = presets.dodge.ninja
end)
Hooks:PostHook(CharacterTweakData, "_init_fbi", "cool_dodges", function(self, presets)
	self.fbi.dodge = presets.dodge.ninja
end)
Hooks:PostHook(CharacterTweakData, "_init_swat", "cool_dodges_fast", function(self, presets)
	self.swat.dodge = presets.dodge.ninja
	self.swat.move_speed = presets.move_speed.very_fast -- make zeal lights run as fast as light units from other factions
end)

-- Give minigunners the ability to run and make normal dozers faster, lower their hs mul a tiny bit
Hooks:PostHook(CharacterTweakData, "_init_tank", "faster_dozers", function(self, presets)
	self.tank.headshot_dmg_mul = 4.8
	self.tank.move_speed = {
		stand = {
			walk = {
				ntl = {
					strafe = 166,
					fwd = 188,
					bwd = 144
				},
				hos = {
					strafe = 166,
					fwd = 188,
					bwd = 144
				},
				cbt = {
					strafe = 166,
					fwd = 188,
					bwd = 144
				}
			},
			run = {
				hos = {
					strafe = 335,
					fwd = 450,
					bwd = 225
				},
				cbt = {
					strafe = 335,
					fwd = 450,
					bwd = 225
				}
			}
		},
		crouch = {
			walk = {
				hos = {
					strafe = 180,
					fwd = 235,
					bwd = 170
				},
				cbt = {
					strafe = 180,
					fwd = 235,
					bwd = 170
				}
			},
			run = {
				hos = {
					strafe = 280,
					fwd = 330,
					bwd = 255
				},
				cbt = {
					strafe = 270,
					fwd = 312,
					bwd = 255
				}
			}
		}
	}
	self.tank_mini.move_speed = presets.move_speed.slow
end)

-- Make medics actually use proper hurt animations, ty bay for suggestion
-- Decrease their movement speed so that they don't outrun their teammates
-- Also remove their suppression preset to get rid of t-bagging
Hooks:PostHook(CharacterTweakData, "_init_medic", "medic", function(self, presets)
	self.medic.damage.hurt_severity = presets.hurt_severities.base
	self.medic.use_animation_on_fire_damage = true
	self.medic.suppression = nil
	self.medic.move_speed = presets.move_speed.fast
end)

-- Thanks RedFlame for helping with this
local _presets_orig = CharacterTweakData._presets
function CharacterTweakData:_presets(tweak_data, ...)
	local presets = _presets_orig(self, tweak_data, ...)
	-- cop Shotgunner preset (previously used for swat shotgunners too)
	-- 420 damage point blank, falls off down to 70 at max range
	presets.weapon.deathwish.is_shotgun_pump = {
		aim_delay = {
			0.2,
			0.2
		},
		focus_delay = 1,
		focus_dis = 200,
		spread = 15,
		miss_dis = 20,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {1, 2},
		range = {
			optimal = 3000,
			far = 5000,
			close = 2000
		},
		FALLOFF = {
			{
				dmg_mul = 6,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.75,
					0.75
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 5.5,
				r = 500,
				acc = {
					0.7,
					0.95
				},
				recoil = {
					0.75,
					0.75
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 3,
				r = 1000,
				acc = {
					0.5,
					0.8
				},
				recoil = {
					0.75,
					0.75
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 2,
				r = 2000,
				acc = {
					0.45,
					0.65
				},
				recoil = {
					1.25,
					1.5
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.3,
					0.5
				},
				recoil = {
					1.5,
					1.75
				},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
	}
	
	-- cop revolver preset
	-- 200 damage point blank down to 140 at max range
	presets.weapon.deathwish.is_revolver.aim_delay = {
		0.2,
		0.2
	}
	presets.weapon.deathwish.is_revolver.focus_delay = 1
	presets.weapon.deathwish.is_revolver.FALLOFF = {
		{
			dmg_mul = 20,
			r = 100,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.8,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 20,
			r = 500,
			acc = {
				0.6,
				0.85
			},
			recoil = {
				0.8,
				1.1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 18.5,
			r = 1000,
			acc = {
				0.5,
				0.75
			},
			recoil = {
				0.8,
				1.1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 16,
			r = 2000,
			acc = {
				0.5,
				0.65
			},
			recoil = {
				1,
				1.3
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 14,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.5
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	
	-- cop glock preset
	-- 75 damage down to 30 at max range
	presets.weapon.deathwish.is_pistol.aim_delay = {
			0.2,
			0.2
		}
	presets.weapon.deathwish.is_pistol.focus_delay = 1
	presets.weapon.deathwish.is_pistol.FALLOFF = {
			{
				dmg_mul = 7.5,
				r = 100,
				acc = {
					0.9,
					0.95
				},
				recoil = {
					0.15,
					0.25
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 7.5,
				r = 500,
				acc = {
					0.7,
					0.85
				},
				recoil = {
					0.15,
					0.3
				},
				mode = {
					0,
					0,
					1,
					0
				}
			},
			{
				dmg_mul = 6.5,
				r = 1000,
				acc = {
					0.6,
					0.75
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				dmg_mul = 5,
				r = 2000,
				acc = {
					0.3,
					0.5
				},
				recoil = {
					0.4,
					0.5
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 4,
				r = 3000,
				acc = {
					0.1,
					0.3
				},
				recoil = {
					0.6,
					0.8
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 3,
				r = 4000,
				acc = {
					0.0,
					0.2
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}

	-- cop smg preset
	-- 90 damage point blank down to 40 at max range
	presets.weapon.deathwish.is_smg.aim_delay = {
			0.2,
			0.2
		}
	presets.weapon.deathwish.is_smg.focus_delay = 1
	presets.weapon.deathwish.is_smg.FALLOFF = {
			{
				dmg_mul = 9,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.1,
					0.25
				},
				mode = {
					1,
					0,
					0,
					0
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 9,
				r = 500,
				acc = {
					0.75,
					0.75
				},
				recoil = {
					0.1,
					0.3
				},
				mode = {
					1,
					0,
					0,
					0
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 7.5,
				r = 1000,
				acc = {
					0.65,
					0.65
					},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					1,
					0,
					0,
					0
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 6,
				r = 2000,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 5,
				r = 3000,
				acc = {
					0.55,
					0.6
				},
				recoil = {
					0.5,
					1.5
					},
				mode = {
					1,
					6,
					2,
					0
				}
			},
			{
				dmg_mul = 4,
				r = 4500,
				acc = {
					0.3,
					0.6
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
	return presets
end

-- Less BS OD taken as a base, big thanks to Ellie for making this shit actually readable
function CharacterTweakData:_set_sm_wish()
	-- od health mul
	self:_multiply_all_hp(7.5, 1.6)

	-- shield health (x10)
	self.shield.HEALTH_INIT = 90
	-- taser health (x10)
	self.taser.HEALTH_INIT = 240
	-- cloaker health (x10)
	-- they were too tanky imo
	self.spooc.HEALTH_INIT = 360
	-- medic health (x10)
	-- same story here
	self.medic.HEALTH_INIT = 180
	-- bulldozer health (x10) and 2x crit damage mul
	self.tank.HEALTH_INIT = 2160
	self.tank_mini.HEALTH_INIT = 1800
	self.tank.critical_hits = { damage_mul = 2 }
	self.tank_mini.critical_hits = { damage_mul = 2}

	-- Making enemies actually be able to use full auto fire
	-- As well as giving them aim delays and focus delays to cut down on the cheap prefires

	-- M4 riflemen preset (lights and heavies)
	-- Goes from 225dmg point blank down to 100dmg
	local m4 = {
		aim_delay = {
			0.2,
			0.2
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 40,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 1250,
			far = 2500,
			close = 750
		},
		autofire_rounds = {
			3,
			6
		},
		FALLOFF = {
			{
				dmg_mul = 16,
				r = 100,
				acc = {
					0.9,
					0.975
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 16,
				r = 500,
				acc = {
					0.875,
					0.95
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 14,
				r = 1000,
				acc = {
					0.8,
					0.9
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 12,
				r = 1500,
				acc = {
					0.75,
					0.85
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 10,
				r = 2000,
				acc = {
					0.65,
					0.75
				},
				recoil = {
					0.2,
					0.3
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 10,
				r = 3000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					3,
					2,
					1,
					0.5
				}
			},
		}
	}

	-- UMP Gensec preset
	-- 160 damage point blank down to 80 at max range
	self.city_swat.weapon.is_smg = {
		aim_delay = {
			0.2,
			0.2
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 40,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 1250,
			far = 2500,
			close = 750
		},
		autofire_rounds = {
			3,
			6
		},
		FALLOFF = {
			{
				dmg_mul = 16,
				r = 100,
				acc = {
					0.9,
					0.975
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 16,
				r = 500,
				acc = {
					0.875,
					0.95
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 13,
				r = 1000,
				acc = {
					0.8,
					0.9
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 10,
				r = 1500,
				acc = {
					0.75,
					0.85
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				dmg_mul = 8,
				r = 2000,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.2,
					0.3
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 6,
				r = 3000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					3,
					2,
					1,
					0.5
				}
			}
		}
	}

	-- Shotgunner preset
	-- 350 damage point blank, falls off down to 70 at max range
	self.city_swat.weapon.is_shotgun_pump = {
		aim_delay = {
			0.2,
			0.2
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 20,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {1, 2},
		range = {
			optimal = 500,
			far = 1000,
			close = 100
		},
		FALLOFF = {
			{
				dmg_mul = 7,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.4,
					0.4
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 7,
				r = 500,
				acc = {
					0.7,
					0.95
				},
				recoil = {
					0.4,
					0.4
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 3.5,
				r = 1000,
				acc = {
					0.5,
					0.8
				},
				recoil = {
					0.5,
					0.5
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 2.5,
				r = 2000,
				acc = {
					0.45,
					0.65
				},
				recoil = {
					0.8,
					0.8
				},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				dmg_mul = 1,
				r = 3000,
				acc = {
					0.3,
					0.5
				},
				recoil = {
					1.5,
					1.75
				},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
	}
	
	-- Cloaker / Medic preset
	-- 6 damage and goes down to 10 
	local cloaker = {
		aim_delay = {
			0.2,
			0.2
		},
		focus_delay = 0.2,
		focus_dis = 200,
		spread = 15,
		miss_dis = 10,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 1250,
			far = 2500,
			close = 750
		},
		autofire_rounds = {
			8,
			16
		},
		FALLOFF = {
			{
				dmg_mul = 6,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.1,
					0.25
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 6,
				r = 500,
				acc = {
					0.9,
					0.9
				},
				recoil = {
					0.1,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					5,
					10
				}
			},
			{
				dmg_mul = 4.5,
				r = 1000,
				acc = {
					0.85,
					0.85
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 3,
				r = 1500,
				acc = {
					0.65,
					0.7
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					6
				}
			},
			{
				dmg_mul = 2.5,
				r = 2000,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.2,
					0.3
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 2,
				r = 3000,
				acc = {
					0.55,
					0.6
				},
				recoil = {
					0.5,
					1.5
				},
				mode = {
					1,
					6,
					2,
					0
				}
			}
		}
	}

	--bosses
	self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 3.14,
			r = 200,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				1,
				2,
				1
			}
		},
		{
			dmg_mul = 2.5,
			r = 500,
			acc = {
				0.6,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 2.1,
			r = 1000,
			acc = {
				0.4,
				0.8
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				1,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1.8,
			r = 2000,
			acc = {
				0.4,
				0.55
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				3,
				2,
				2,
				0
			}
		},
		{
			dmg_mul = 1.4,
			r = 3000,
			acc = {
				0.1,
				0.35
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				1,
				1,
				0
			}
		}
	}
	self.hector_boss.HEALTH_INIT = 900
	self.mobster_boss.HEALTH_INIT = 900
	self.biker_boss.HEALTH_INIT = 3000
	self.chavez_boss.HEALTH_INIT = 900

	self:_multiply_all_speeds(4.05, 4.1)
	self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
	self:_multiply_weapon_delay(self.presets.weapon.good, 0)
	self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
	self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
	self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)

	--team ai
	self.presets.gang_member_damage.REGENERATE_TIME = 1.8
	self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
	self.presets.gang_member_damage.HEALTH_INIT = 800
	self.presets.weapon.gang_member.is_pistol.FALLOFF = {
		{
			dmg_mul = 10,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 5,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_rifle.FALLOFF = {
		{
			dmg_mul = 10,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 5,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_sniper.FALLOFF = {
		{
			dmg_mul = 20,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 20,
			r = 1000,
			acc = {
				1,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 20,
			r = 2500,
			acc = {
				0.95,
				1
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 10,
			r = 4000,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 10,
			r = 10000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				1,
				1
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_lmg.FALLOFF = {
		{
			dmg_mul = 10,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 7.5,
			r = 1000,
			acc = {
				0.85,
				0.9
			},
			recoil = {
				0.4,
				0.65
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 3000,
			acc = {
				0.5,
				0.7
			},
			recoil = {
				0.8,
				1.25
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 4000,
			acc = {
				0.02,
				0.25
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 0.5,
			r = 10000,
			acc = {
				0.01,
				0.1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0,
				0,
				0,
				1
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 10,
			r = 300,
			acc = {
				1,
				1
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		},
		{
			dmg_mul = 5,
			r = 10000,
			acc = {
				1,
				1
			},
			recoil = {
				2,
				3
			},
			mode = {
				0.1,
				0.3,
				4,
				7
			}
		}
	}
	self.presets.weapon.gang_member.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 10,
			r = 100,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				6
			}
		},
		{
			dmg_mul = 8,
			r = 500,
			acc = {
				1,
				1
			},
			recoil = {
				0.1,
				0.1
			},
			mode = {
				1,
				1,
				4,
				5
			}
		},
		{
			dmg_mul = 7,
			r = 1000,
			acc = {
				0.85,
				0.95
			},
			recoil = {
				0.1,
				0.15
			},
			mode = {
				1,
				2,
				4,
				4
			}
		},
		{
			dmg_mul = 5,
			r = 2000,
			acc = {
				0.75,
				0.9
			},
			recoil = {
				0.25,
				0.45
			},
			mode = {
				1,
				4,
				4,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 3000,
			acc = {
				0.4,
				0.7
			},
			recoil = {
				0.4,
				0.5
			},
			mode = {
				4,
				2,
				1,
				0
			}
		},
		{
			dmg_mul = 0.2,
			r = 10000,
			acc = {
				0.05,
				0.2
			},
			recoil = {
				0.5,
				1
			},
			mode = {
				2,
				1,
				0,
				0
			}
		}
	}
	self.presets.weapon.gang_member.is_smg = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_revolver = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_rifle = self.presets.weapon.gang_member.is_rifle
	self.presets.weapon.gang_member.is_shotgun_pump = self.presets.weapon.gang_member.is_shotgun_pump
	self.presets.weapon.gang_member.mac11 = self.presets.weapon.gang_member.is_smg
	self.presets.weapon.gang_member.rifle = deep_clone(self.presets.weapon.gang_member.is_rifle)
	self.presets.weapon.gang_member.rifle.autofire_rounds = nil
	self.presets.weapon.gang_member.akimbo_pistol = self.presets.weapon.gang_member.is_pistol
	self.presets.weapon.gang_member.is_shotgun_mag = deep_clone(self.presets.weapon.gang_member.is_shotgun_pump)

	self:_set_characters_weapon_preset("deathwish")

	self.spooc.spooc_attack_timeout = {3, 4}

	-- Sniper preset
	-- Higher aim delay to remove unavoidable deaths and higher accuracy to compensate and make them more consistent
	self.sniper.weapon.is_rifle.aim_delay = {1, 1}
	self.sniper.weapon.is_rifle.FALLOFF = {
		{
			r = 700,
			acc = {1, 1},
			dmg_mul = 12,
			recoil = {3, 5},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 4000,
			acc = {0.95, 0.95},
			dmg_mul = 12,
			recoil = {3, 5},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			r = 10000,
			acc = {0.8, 0.8},
			dmg_mul = 12,
			recoil = {3, 5},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}

	-- Saigadozer preset
	-- 150dmg point blank, down to 60 at max range
	self.tank.weapon.is_shotgun_mag.aim_delay = {
		0.2,
		0.2
	}
	self.tank.weapon.is_shotgun_mag.range = {
		optimal = 650,
		far = 1300,
		close = 250
	}
	self.tank.weapon.is_shotgun_mag.focus_delay = 0.2
	self.tank.weapon.is_shotgun_mag.focus_dis = 200
	self.tank.weapon.is_shotgun_mag.FALLOFF = {
		{
			dmg_mul = 5,
			r = 100,
			acc = {
				0.9,
				0.975
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 4,
			r = 500,
			acc = {
				0.85,
				0.95
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 4,
			r = 1000,
			acc = {
				0.75,
				0.85
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 2000,
			acc = {
				0.65,
				0.7
			},
			recoil = {
				0.45,
				0.8
			},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			dmg_mul = 2,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1,
				1.2
			},
			mode = {
				3,
				2,
				2,
				0
			}
		}
	}

	-- Greendozer preset
	-- Damage unchanged, higher rog and not shit falloff
	self.tank.weapon.is_shotgun_pump.aim_delay = {
		0.2,
		0.2
	}
	self.tank.weapon.is_shotgun_pump.range = {
		optimal = 500,
		far = 1000,
		close = 100
	}
	self.tank.weapon.is_shotgun_pump.focus_delay = 0.2
	self.tank.weapon.is_shotgun_pump.focus_dis = 200
	self.tank.weapon.is_shotgun_pump.FALLOFF = {
		{
			dmg_mul = 9,
			r = 100,
			acc = {
				0.95,
				0.95
			},
			recoil = {
				0.9,
				0.9
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 8,
			r = 500,
			acc = {
				0.9,
				0.95
			},
			recoil = {
				0.9,
				0.9
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 7,
			r = 1000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				0.9,
				0.9
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 4,
			r = 2000,
			acc = {
				0.45,
				0.65
			},
			recoil = {
				1.1,
				1.25
			},
			mode = {
				1,
				0,
				0,
				0
			}
		},
		{
			dmg_mul = 2,
			r = 3000,
			acc = {
				0.3,
				0.5
			},
			recoil = {
				1.5,
				1.75
			},
			mode = {
				1,
				0,
				0,
				0
			}
		}
	}


	-- Skulldozer preset
	-- 80dmg down to 30 past 30m, a bit lower spread
	self.tank.weapon.is_rifle.spread = 15
	self.tank.weapon.is_rifle.aim_delay = {
		0.2,
		0.2
	}
	self.tank.weapon.is_rifle.autofire_rounds = {
		40,
		80
	}
	self.tank.weapon.is_rifle.range = {
		optimal = 1250,
		far = 2500,
		close = 750
	}
	self.tank.weapon.is_rifle.focus_delay = 0.2
	self.tank.weapon.is_rifle.FALLOFF = {
		{
			dmg_mul = 3,
			r = 100,
			acc = {
				0.7,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 500,
			acc = {
				0.5,
				0.75
			},
			recoil = {
				0.65,
				0.8
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 1000,
			acc = {
				0.5,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 2000,
			acc = {
				0.3,
				0.55
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			dmg_mul = 3,
			r = 3000,
			acc = {
				0.15,
				0.45
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				2,
				6
			}
		}
	}

	-- Minidozer preset
	-- 100 damage down to 40, only changed in case i'll use them later
	self.tank_mini.weapon.mini.aim_delay = {
		0.2,
		0.2
	}
	self.tank_mini.weapon.mini.autofire_rounds = {
		100,
		200
	}
	self.tank.weapon.mini.range = {
		optimal = 1250,
		far = 2500,
		close = 750
	}
	self.tank_mini.weapon.mini.focus_delay = 2
	self.tank_mini.weapon.mini.FALLOFF = {
		{
			dmg_mul = 5,
			r = 100,
			acc = {
				0.9,
				0.9
			},
			recoil = {
				0.4,
				0.7
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				500,
				700
			}
		},
		{
			dmg_mul = 4,
			r = 500,
			acc = {
				0.8,
				0.9
			},
			recoil = {
				0.5,
				0.8
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				500,
				500
			}
		},
		{
			dmg_mul = 4,
			r = 1000,
			acc = {
				0.6,
				0.8
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				300,
				500
			}
		},
		{
			dmg_mul = 3,
			r = 2000,
			acc = {
				0.3,
				0.6
			},
			recoil = {
				1,
				1
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				100,
				300
			}
		},
		{
			dmg_mul = 2,
			r = 3000,
			acc = {
				0.3,
				0.4
			},
			recoil = {
				1,
				2
			},
			mode = {
				0,
				0,
				0,
				1
			},
			autofire_rounds = {
				40,
				100
			}
		}
	}

	-- Medicdozer preset
	-- unchanged cause unused
	self.tank_medic.weapon.is_smg = {
		aim_delay = {
			0,
			0
		},
		focus_delay = 0,
		focus_dis = 200,
		spread = 15,
		miss_dis = 10,
		RELOAD_SPEED = 1.4,
		melee_speed = 1,
		melee_dmg = 20,
		melee_retry_delay = {
			1,
			2
		},
		range = {
			optimal = 3200,
			far = 6000,
			close = 2000
		},
		autofire_rounds = {
			8,
			16
		},
		FALLOFF = {
			{
				dmg_mul = 4,
				r = 100,
				acc = {
					0.95,
					0.95
				},
				recoil = {
					0.1,
					0.25
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 4,
				r = 500,
				acc = {
					0.9,
					0.9
				},
				recoil = {
					0.1,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					10
				}
			},
			{
				dmg_mul = 4,
				r = 1000,
				acc = {
					0.85,
					0.85
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					3,
					6
				}
			},
			{
				dmg_mul = 3,
				r = 2000,
				acc = {
					0.6,
					0.7
				},
				recoil = {
					0.35,
					0.5
				},
				mode = {
					0,
					6,
					3,
					0
				}
			},
			{
				dmg_mul = 2,
				r = 3000,
				acc = {
					0.55,
					0.6
				},
				recoil = {
					0.5,
					1.5
				},
				mode = {
					1,
					6,
					2,
					0
				}
			},
			{
				dmg_mul = 2,
				r = 4500,
				acc = {
					0.3,
					0.6
				},
				recoil = {
					1,
					1.5
				},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
	}

	-- Shield preset
	-- Lowered the damage down to 40 with falloff to give some purpose to LBV
	self.shield.weapon.is_smg.aim_delay = {0.2, 0.2}
	self.shield.weapon.is_smg.focus_delay = 0.2
	self.shield.weapon.is_smg.focus_dis = 200
	self.shield.weapon.is_smg.range = {
		optimal = 900,
		far = 1750,
		close = 500
	}
	self.shield.weapon.is_smg.FALLOFF = {
		{
			r = 100,
			acc = {0.9, 0.95},
			dmg_mul = 6.75,
			recoil = {0.35, 0.35},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 700,
			acc = {0.8, 0.8},
			dmg_mul = 6.75,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 1000,
			acc = {0.6, 0.65},
			dmg_mul = 5,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 2000,
			acc = {0.5, 0.7},
			dmg_mul = 3.5,
			recoil = {0.35, 1},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.5},
			dmg_mul = 1.5,
			recoil = {0.5, 1.2},
			mode = {
				0,
				3,
				3,
				1
			}
		}
	}

	--Shield with glock (scripted)
	--identical to mp9 except fire rate/acc
	self.shield.weapon.is_pistol.aim_delay = {0.2, 0.2}
	self.shield.weapon.is_pistol.focus_delay = 0.2
	self.shield.weapon.is_pistol.range = {
		optimal = 900,
		far = 1750,
		close = 500
	}
	self.shield.weapon.is_pistol.FALLOFF = {
		{
			r = 100,
			acc = {0.9, 0.95},
			dmg_mul = 6.75,
			recoil = {0.35, 0.35},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 700,
			acc = {0.8, 0.8},
			dmg_mul = 6.75,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 1000,
			acc = {0.6, 0.65},
			dmg_mul = 5,
			recoil = {0.35, 0.55},
			mode = {
				0,
				0,
				0,
				1
			}
		},
		{
			r = 2000,
			acc = {0.5, 0.7},
			dmg_mul = 3.5,
			recoil = {0.35, 1},
			mode = {
				0,
				3,
				3,
				1
			}
		},
		{
			r = 3000,
			acc = {0.5, 0.5},
			dmg_mul = 1.5,
			recoil = {0.5, 1.2},
			mode = {
				0,
				3,
				3,
				1
			}
		}
	}

		-- zeal rifleman (m4)
		self.heavy_swat.weapon.is_rifle = m4
		--tans (g36/m4, map spawn)
		self.fbi_heavy_swat.weapon.is_rifle = self.city_swat.weapon.is_smg
		--gensec elites (g36, map spawn)
		self.city_swat.weapon.is_rifle = self.city_swat.weapon.is_smg
		--cloakers (mp5)
		self.spooc.weapon.is_smg = cloaker
		--medic (m4)
		self.medic.weapon.is_rifle = cloaker
		
		-- Taser preset (225 down to 100)
		self.taser.weapon.is_rifle.aim_delay = {0.2, 0.2}
		self.taser.weapon.is_rifle.focus_delay = 0.2
		self.taser.weapon.is_rifle.range = {
			optimal = 1250,
			far = 2500,
			close = 750
		}
		self.taser.weapon.is_rifle.FALLOFF = {
			{
				dmg_mul = 22.5,
				r = 100,
				acc = {
					0.9,
					0.975
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					8,
					16
				}
			},
			{
				dmg_mul = 22.5,
				r = 500,
				acc = {
					0.875,
					0.95
				},
				recoil = {
					0.25,
					0.3
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					6,
					12
				}
			},
			{
				dmg_mul = 18.5,
				r = 1000,
				acc = {
					0.8,
					0.9
				},
				recoil = {
					0.35,
					0.55
				},
				mode = {
					0,
					0,
					0,
					1
				},
				autofire_rounds = {
					4,
					8
				}
			},
			{
				dmg_mul = 16,
				r = 1500,
				acc = {
					0.75,
					0.85
				},
				recoil = {
					0.4,
					0.6
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 12.5,
				r = 2000,
				acc = {
					0.65,
					0.75
				},
				recoil = {
					0.2,
					0.3
				},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				dmg_mul = 10,
				r = 3000,
				acc = {
					0.4,
					0.6
				},
				recoil = {
					0.7,
					1.1
				},
				mode = {
					3,
					2,
					1,
					0.5
				}
			},
		}
	

	self.city_swat.damage.explosion_damage_mul = 1
	self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
	-- Phalanx
	-- lower damage cap
	self.phalanx_minion.HEALTH_INIT = 400
	self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
	self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = 20
	self.phalanx_vip.HEALTH_INIT = 800
	self.phalanx_vip.DAMAGE_CLAMP_BULLET = 30
	self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = 15

	self.flashbang_multiplier = 2
	self.concussion_multiplier = 1	
end