Hooks:PostHook(GroupAITweakData, "_init_unit_categories", "promod", function(self, difficulty_index)
	if difficulty_index == 8 then
		self.special_unit_spawn_limits = {
			tank = 2,
			taser = 3,
			spooc = 3,
			shield = 5,
			medic = 4
		}
	end


-- I ain't forgetting about this cunt again
local access_type_walk_only = {
	walk = true
}
local access_type_all = {
	acrobatic = true,
	walk = true
}

	-- Benelli gensec shotgunners
	if difficulty_index == 8 then
		self.unit_categories.shotgunner_elite = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_r870/ene_akan_cs_swat_r870")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_swat_hvh_2/ene_swat_hvh_2")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light_city_r870/ene_murkywater_light_city_r870")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale_city_r870/ene_swat_policia_federale_city_r870")
				}
			},
			access = access_type_all
		}
	end
	
	-- UMP gensec smgman
	if difficulty_index == 8 then
		self.unit_categories.smgman_elite = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				russia = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				zombie = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				},
				federales = {
					Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
				}
			},
			access = access_type_all
		}
	end

	-- Balaclava HRT unit
	if difficulty_index == 8 then 
		self.unit_categories.balaclava = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_fbi_hvh_3/ene_fbi_hvh_3")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
				}
			},
			access = access_type_all
		}
	end

	-- Whiteshirt HRT unit
	if difficulty_index == 8 then
		self.unit_categories.whiteshirt = {
			unit_types = {
				america = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_fbi_hvh_2/ene_fbi_hvh_2")
				},
				murkywater = {
					Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
				},
				federales = {
					Idstring("units/payday2/characters/ene_fbi_1/ene_fbi_2")
				}
			},
			access = access_type_all
		}	
	end

	-- Green dozers
	if difficulty_index == 8 then
		self.unit_categories.green_tank = {
			special_type = "tank",
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_2/ene_zeal_bulldozer_2")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_1/ene_bulldozer_hvh_1")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_2/ene_murkywater_bulldozer_2")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_r870/ene_swat_dozer_policia_federale_r870")
				}
			},
			access = access_type_all
		}
	end

	-- Saiga dozers
	if difficulty_index == 8 then
		self.unit_categories.saiga_tank = {
			special_type = "tank",
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_3/ene_zeal_bulldozer_3")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_2/ene_bulldozer_hvh_2")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_3/ene_murkywater_bulldozer_3")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_saiga/ene_swat_dozer_policia_federale_saiga")
				}
			},
			access = access_type_all
		}
	end

	-- Lmg dozers
	if difficulty_index == 8 then
		self.unit_categories.lmg_tank = {
			special_type = "tank",
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer")
				},
				russia = {
					Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg")
				},
				zombie = {
					Idstring("units/pd2_dlc_hvh/characters/ene_bulldozer_hvh_3/ene_bulldozer_hvh_3")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_4/ene_murkywater_bulldozer_4")
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_m249/ene_swat_dozer_policia_federale_m249")
				}
			},
			access = access_type_all
		}
	end

	-- Specific unit category for minigun dozers
	if difficulty_index == 8 then
		self.unit_categories.mini_dozer = { 
			unit_types = {
				america = {
					Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun")
				},
				russia = {
					Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun")
				},
				zombie = {
					Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun")
				},
				murkywater = {
					Idstring("units/pd2_dlc_bph/characters/ene_murkywater_bulldozer_1/ene_murkywater_bulldozer_1"),
				},
				federales = {
					Idstring("units/pd2_dlc_bex/characters/ene_swat_dozer_policia_federale_minigun/ene_swat_dozer_policia_federale_minigun"),
				}
			},
			access = access_type_all
		}
	end

end)

Hooks:PostHook(GroupAITweakData, "_init_enemy_spawn_groups", "promod_task_data", function(self, difficulty_index)
    --Confirmed functional tactics:
	--[[
	charge
	flank
	deathguard
	ranged_fire
	flash_grenade
	smoke_grenade

	Other tactics:
	shield
	shield_cover
	provide_coverfire
	provide_support
	]]
	self._tactics = {
		Phalanx_minion = {
			"ranged_fire"
		},
		Phalanx_vip = {
			"ranged_fire"
		},
		swat_shotgun_rush = {
			"charge",
			"shield_cover",
			"provide_support",
			"flash_grenade"
		},
		swat_shotgun_flank = {
			"charge",
			"flank",
			"provide_support",
			"flash_grenade",
			"deathguard"
		},
		swat_rifle = {
			"ranged_fire",
			"charge",
			"provide_coverfire",
			"shield_cover",
			"flash_grenade"
		},
		swat_rifle_flank = {
			"charge",
			"flank",
			"provide_coverfire",
			"deathguard",
			"flash_grenade"
		},
		shield_wall_ranged = {
			"charge",
			"shield",
			"provide_coverfire",
			"flash_grenade"
		},
		shield_wall_flank = {
			"flank",
			"shield",
			"provide_coverfire",
			"flash_grenade"
		},
		shield_support_ranged = {
			"provide_support",
			"ranged_fire",
			"shield_cover",
			"flash_grenade"
		},
		shield_support_charge = {
			"flank",
			"charge",
			"provide_support",
			"flash_grenade",
			"deathguard"
		},
		shield_wall_charge = {
			"shield",
			"provide_coverfire",
			"charge"
		},
		tazer_flanking = {
			"flank",
			"charge",
			"flash_grenade",
			"provide_support",
			"deathguard"
		},
		tazer_charge = {
			"charge",
			"ranged_fire",
			"shield_cover",
			"flash_grenade",
			"provide_support",
			"deathguard"
		},
		tank_rush = {
			"charge",
			"provide_coverfire",
			"flash_grenade",
			"smoke_grenade",
			"deathguard"
		},
		tank_flank = {
			"flank",
			"charge",
			"shield_cover",
			"flash_grenade",
			"smoke_grenade",
			"provide_coverfire",
			"deathguard"
		},
		tank_ranged = {
			"ranged_fire",
			"shield_cover",
			"flash_grenade",
			"provide_coverfire"
		},
		spooc = {
			"charge",
			"flank",
			"flash_grenade",
			"smoke_grenade"
		},
		reenforce_aggressive = {
			"charge",
			"flash_grenade",
			"smoke_grenade",
			"provide_coverfire",
			"provide_support"
		},
		reenforce_passive = {
			"ranged_fire",
			"flash_grenade",
			"smoke_grenade",
			"provide_coverfire",
			"provide_support"
		},
		recon_ranged = {
			"ranged_fire",
			"provide_coverfire",
			"provide_support",
			"flash_grenade"
		},
		recon_charge = {
			"charge",
			"provide_coverfire",
			"provide_support",
			"flash_grenade"
		},
		recon_sneaky = {
			"flank",
			"provide_coverfire",
			"provide_support",
			"flash_grenade"
		}
	}
	self.enemy_spawn_groups = {}

	-- Throwing away all the small edits to vanilla spawngroups as i finally figured out how to properly implement my own spawngroups
	-- Was just constantly making a few small mistakes that fucked up the entire thing, well not anymore
	if difficulty_index == 8 then
		self.enemy_spawn_groups.rifleman_charge = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.swat_rifle
				},
				{
					amount_min = 3,
					freq = 3,
					amount_max = 3,
					rank = 3,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.swat_rifle
				}
			}
		}
		self.enemy_spawn_groups.rifleman_flank = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.swat_rifle_flank
				},
				{
					amount_min = 3,
					freq = 3,
					amount_max = 3,
					rank = 3,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.swat_rifle_flank
				}
			}
		}
		self.enemy_spawn_groups.shotgunner_charge = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 3,
					freq = 3,
					amount_max = 3,
					rank = 3,
					unit = "shotgunner_elite",
					tactics = self._tactics.swat_shotgun_rush
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.swat_shotgun_rush
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.swat_shotgun_rush
				}
			}
		}
		self.enemy_spawn_groups.shotgunner_flank = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 3,
					freq = 3,
					amount_max = 3,
					rank = 3,
					unit = "shotgunner_elite",
					tactics = self._tactics.swat_shotgun_flank
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.swat_shotgun_flank
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.swat_shotgun_flank
				}
			}
		}
		self.enemy_spawn_groups.shield_charge = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "FBI_shield",
					tactics = self._tactics.shield_wall_ranged
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.shield_support_ranged
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 1,
					unit = "FBI_swat_M4",
					tactics = self._tactics.shield_support_ranged
				}
			}
		}
		self.enemy_spawn_groups.shield_flank = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "FBI_shield",
					tactics = self._tactics.shield_wall_charge
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.shield_support_charge
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 1,
					unit = "FBI_swat_M4",
					tactics = self._tactics.shield_support_charge
				}
			}
		}
		self.enemy_spawn_groups.taser_charge = {
			amount = {
				4,
				5
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "CS_tazer",
					tactics = self._tactics.tazer_charge
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.tazer_charge
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 1,
					unit = "medic_M4",
					tactics = self._tactics.tazer_charge
				}
			}
		}
		self.enemy_spawn_groups.taser_flank = {
			amount = {
				4,
				5
			},
			spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 3,
					unit = "CS_tazer",
					tactics = self._tactics.tazer_flanking
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.tazer_flanking
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 1,
					unit = "medic_M4",
					tactics = self._tactics.tazer_flanking
				}
			}
		}
		self.enemy_spawn_groups.tank_charge = {
			amount = {
				2,
				3
			},
			spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "saiga_tank",
					tactics = self._tactics.tank_rush
				},
				{
					amount_min = 0,
					freq = 0.75,
					amount_max = 1,
					rank = 2,
					unit = "CS_tazer",
					tactics = self._tactics.tazer_charge
				},
				{
					amount_min = 0,
					freq = 0.45,
					amount_max = 1,
					rank = 1,
					unit = "medic_M4",
					tactics = self._tactics.tazer_charge
				}
			}
		}
		self.enemy_spawn_groups.tank_flank = {
			amount = {
				2,
				3,
				4
			},
			spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "green_tank",
					tactics = self._tactics.tank_flank
				},
				{
					amount_min = 0,
					freq = 0.45,
					amount_max = 1,
					rank = 1,
					unit = "medic_R870",
					tactics = self._tactics.tazer_flanking
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 2,
					unit = "FBI_shield",
					tactics = self._tactics.shield_wall_flank
				},
				{
					amount_min = 0,
					freq = 0.5,
					amount_max = 1,
					rank = 2,
					unit = "CS_tazer",
					tactics = self._tactics.tazer_flanking
				}
			}
		}
		self.enemy_spawn_groups.tank_ranged = {
			amount = {
				3,
				4
			},
			spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "lmg_tank",
					tactics = self._tactics.tank_ranged
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 2,
					rank = 2,
					unit = "FBI_shield",
					tactics = self._tactics.shield_wall_charge
				},
				{
					amount_min = 1,
					freq = 0.75,
					amount_max = 2,
					rank = 2,
					unit = "CS_tazer",
					tactics = self._tactics.tazer_charge
				},
				{
					amount_min = 0,
					freq = 0.4,
					amount_max = 1,
					rank = 2,
					unit = "medic_M4",
					tactics = self._tactics.tazer_charge
				},
			}
		}
		self.enemy_spawn_groups.cloaker_squad = {
			amount = {
				3,
				3
			},
			spawn = {
				{
					freq = 3,
					amount_min = 3,
					amount_max = 3,
					rank = 1,
					unit = "spooc",
					tactics = self._tactics.spooc
				}
			}
		}
		self.enemy_spawn_groups.reenforce_fucksquad = {
			amount = {
				5,
				5
			},
			spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "lmg_tank",
					tactics = self._tactics.reenforce_aggressive
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "CS_tazer",
					tactics = self._tactics.reenforce_aggressive
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 1,
					unit = "shotgunner_elite",
					tactics = self._tactics.reenforce_aggressive
				}
			}
		}
		self.enemy_spawn_groups.reenforce_sneaky = {
			amount = {
				4,
				4
			},
				spawn = {
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "spooc",
					tactics = self._tactics.reenforce_aggressive
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 1,
					unit = "FBI_swat_M4",
					tactics = self._tactics.reenforce_passive
				}
			}
		}
		self.enemy_spawn_groups.reenforce_common = {
			amount = {
				4,
				4
			},
				spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 3,
					unit = "CS_tazer",
					tactics = self._tactics.reenforce_passive
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 1,
					rank = 2,
					unit = "FBI_heavy_G36",
					tactics = self._tactics.reenforce_passive
				},
				{
					amount_min = 2,
					freq = 2,
					amount_max = 2,
					rank = 2,
					unit = "FBI_swat_M4",
					tactics = self._tactics.reenforce_passive
				}
			}
		}
		self.enemy_spawn_groups.fbi_hrt = {
			amount = {
				4,
				5
			},
				spawn = {
				{
					amount_min = 2,
					freq = 1,
					amount_max = 3,
					rank = 1,
					unit = "balaclava",
					tactics = self._tactics.recon_sneaky
				},
				{
					amount_min = 2,
					freq = 1,
					amount_max = 3,
					rank = 1,
					unit = "whiteshirt",
					tactics = self._tactics.recon_ranged
				}
			}
		}
		self.enemy_spawn_groups.gensec_hrt = {
			amount = {
				4,
				5
			},
				spawn = {
				{
					amount_min = 2,
					freq = 1,
					amount_max = 3,
					rank = 1,
					unit = "shotgunner_elite",
					tactics = self._tactics.recon_charge
				},
				{
					amount_min = 2,
					freq = 1,
					amount_max = 3,
					rank = 1,
					unit = "smgman_elite",
					tactics = self._tactics.recon_ranged
				}
			}
		}
		self.enemy_spawn_groups.fbi_gensec_hrt = {
			amount = {
				4,
				5
			},
				spawn = {
				{
					amount_min = 1,
					freq = 1,
					amount_max = 2,
					rank = 1,
					unit = "balaclava",
					tactics = self._tactics.recon_sneaky
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 2,
					rank = 1,
					unit = "whiteshirt",
					tactics = self._tactics.recon_ranged
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 2,
					rank = 1,
					unit = "shotgunner_elite",
					tactics = self._tactics.recon_charge
				},
				{
					amount_min = 1,
					freq = 1,
					amount_max = 2,
					rank = 1,
					unit = "smgman_elite",
					tactics = self._tactics.recon_ranged
				}
			}
		}
	end

	self.enemy_spawn_groups.Phalanx = {
		amount = {
			self.phalanx.minions.amount + 1,
			self.phalanx.minions.amount + 1
		},
		spawn = {
			{
				amount_min = 1,
				freq = 1,
				amount_max = 1,
				rank = 2,
				unit = "Phalanx_vip",
				tactics = self._tactics.Phalanx_vip
			},
			{
				freq = 2,
				amount_min = 2,
				amount_max = 2,
				rank = 1,
				unit = "mini_dozer",
				tactics = self._tactics.Phalanx_minion
			},
			{
				freq = 4,
				amount_min = 6,
				amount_max = 6,
				rank = 1,
				unit = "Phalanx_minion",
				tactics = self._tactics.Phalanx_minion
			}
		}
	}
	self.enemy_spawn_groups.single_spooc = {
		amount = {
			1,
			1
		},
		spawn = {
			{
				freq = 1,
				amount_min = 1,
				rank = 1,
				unit = "spooc",
				tactics = self._tactics.spooc
			}
		}
	}
	self.enemy_spawn_groups.FBI_spoocs = self.enemy_spawn_groups.single_spooc
end)

Hooks:PostHook(GroupAITweakData, "_init_task_data", "promod_task_data", function(self, difficulty_index, difficulty)
	local is_console = SystemInfo:platform() ~= Idstring("WIN32")
	if difficulty_index <= 2 then
		self.besiege.recurring_group_SO = {
			recurring_cloaker_spawn = {
				retire_delay = 30,
				interval = {
					180,
					300
				}
			},
			recurring_spawn_1 = {interval = {
				30,
				60
			}}
		}
	elseif difficulty_index == 3 then
		self.besiege.recurring_group_SO = {
			recurring_cloaker_spawn = {
				retire_delay = 30,
				interval = {
					60,
					120
				}
			},
			recurring_spawn_1 = {interval = {
				30,
				60
			}}
		}
	elseif difficulty_index == 4 then
		self.besiege.recurring_group_SO = {
			recurring_cloaker_spawn = {
				retire_delay = 30,
				interval = {
					45,
					60
				}
			},
			recurring_spawn_1 = {interval = {
				30,
				60
			}}
		}
	elseif difficulty_index == 5 then
		self.besiege.recurring_group_SO = {
			recurring_cloaker_spawn = {
				retire_delay = 30,
				interval = {
					20,
					40
				}
			},
			recurring_spawn_1 = {interval = {
				30,
				60
			}}
		}
	else
		self.besiege.recurring_group_SO = {
			recurring_cloaker_spawn = {
				retire_delay = 30,
				interval = {
					20,
					40
				}
			},
			recurring_spawn_1 = {interval = {
				30,
				60
			}}
		}
	end

	-- Assault Data
	if difficulty_index == 8 then
		-- PHASES --

		-- Sustain duration in seconds, based on difficulty value 
		self.besiege.assault.sustain_duration_min = {150, 165, 180}
		self.besiege.assault.sustain_duration_max = {150, 165, 180}

		-- Sustain duration multipliers, based on player count (same as vanilla)
		self.besiege.assault.sustain_duration_balance_mul = {1, 1.1, 1.2, 1.2}

		-- Increase fade duration (consistent 75 seconds, unaffected by drama)
		self.besiege.assault.fade_duration = 75

		-- Increase control duration at high diff values and make it consistent
		self.besiege.assault.delay = {20, 20, 20}
		
		-- SPAWNS --

		-- Spawncap, based on difficulty value
		self.besiege.assault.force = {10, 12, 14}

		-- Spawncap multipliers, based on player count
		self.besiege.assault.force_balance_mul = {1.5, 1.85, 2.20, 2.55}

		-- Spawnpool, based on difficulty value (leaving these same as vanilla as i don't think that exhausting assaults is a great mechanic)
		self.besiege.assault.force_pool = {150, 175, 225}

		-- Spawnpool multipliers, based on player count (leaving these same as vanilla as i don't think that exhausting assaults is a great mechanic)
		self.besiege.assault.force_pool_balance_mul = {1.5, 3, 4.5, 6}

		-- RECON / REENFORCE --

		-- Make reenforce spawngroups spawn faster
		self.besiege.reenforce.interval = {12, 12, 12}

    	-- Make recon spawngroups spawn faster
    	self.besiege.recon.interval = {3, 2, 1}
    	self.besiege.recon.interval_variation = 0 -- Set to 0 to make their spawn intervals consistent

    	-- Higher spawncap for recon spawngroups
    	self.besiege.recon.force = {3, 6, 10}

		-- MISCELLANEOUS --
	
		-- Remove red light beeps from flashbangs
		self.flash_grenade.light_range = 0
		self.flash_grenade.light_specular = 0
	end

	-- Add reenforce spanwgroups into their own spawn pool
	if difficulty_index == 8 then
		self.besiege.reenforce.groups = {
			reenforce_common = {
				0.3,
				0.3,
				0.3
			},
			reenforce_sneaky = {
				0.2,
				0.2,
				0.2
			},
			reenforce_fucksquad = {
				0.2,
				0.2,
				0.2
			}
		}
	end
	
	-- Add main spawngroups into the assault spawn pool
	if difficulty_index == 8 then
		self.besiege.assault.groups = {
			rifleman_charge = {
				0.22,
				0.22,
				0.22
			},
			rifleman_flank = {
				0.20,
				0.20,
				0.20
			},
			shotgunner_charge = {
				0.20,
				0.20,
				0.20
			},
			shotgunner_flank = {
				0.18,
				0.18,
				0.18
			},
			shield_charge = {
				0.12,
				0.12,
				0.12
			},
			shield_flank = {
				0.1,
				0.1,
				0.1
			},
			taser_charge = {
				0.13,
				0.13,
				0.13
			},
			taser_flank = {
				0.11,
				0.11,
				0.11
			},
			tank_charge = {
				0.06,
				0.06,
				0.06
			},
			tank_flank = {
				0.06,
				0.06,
				0.06
			},
			tank_ranged = {
				0.06,
				0.06,
				0.06
			},
			cloaker_squad = {
				0.11,
				0.11,
				0.11
			}
		}
	end

	-- Add HRT groups into the recon spawnpool
	if difficulty_index == 8 then
		self.besiege.recon.groups = {
			fbi_hrt = {
				0.12,
				0.12,
				0.12
			},
			gensec_hrt = {
				0.12,
				0.12,
				0.12
			},
			fbi_gensec_hrt = {
				0.15,
				0.15,
				0.15
			}
		}
	end

	-- So this is what caused these crashes, cringeass. ty redflame
	self.besiege.assault.groups.single_spooc = {
        0,
        0,
        0
    }
    self.besiege.assault.groups.Phalanx = {
        0,
        0,
        0
    }
    self.besiege.recon.groups.single_spooc = {
        0,
        0,
        0
    }
    self.besiege.recon.groups.Phalanx = {
        0,
        0,
        0
    }

	self.street = deep_clone(self.besiege)
	-- Captain edits:
	-- 15% spawn chance every 300 seconds, gets increased by 25% if it fails
	-- Start at 5% damage resist, increase by 5% every 5s up to 30%
	self.phalanx.minions.min_count = 2
	self.phalanx.minions.amount = 8
	self.phalanx.minions.distance = 125
	self.phalanx.vip.health_ratio_flee = 0.2
	self.phalanx.vip.damage_reduction = {
		max = 0.3,
		start = 0.05,
		increase_intervall = 5,
		increase = 0.05
	}
	self.phalanx.check_spawn_intervall = 300
	self.phalanx.chance_increase_intervall = 301
	if difficulty_index == 8 then
		self.phalanx.spawn_chance = {
			decrease = 1,
			start = 0.15,
			respawn_delay = 300000,
			increase = 0.25,
			max = 1
		}
	end
	self.street = deep_clone(self.besiege)
	self.safehouse = deep_clone(self.besiege)
end)