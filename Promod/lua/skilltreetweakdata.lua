local data = SkillTreeTweakData.init
function SkillTreeTweakData:init(tweak_data)
    data(self, tweak_data)

	-- It would've been so much fucking easier if you actually created a new skill for graze instead of just replacing upgrades, jules

	-- Duck and Cover
	self.skills.sprinter = {
		{
			upgrades = {
				"player_stamina_regen_timer_multiplier",
				"player_stamina_regen_multiplier",
				"player_run_speed_multiplier"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"player_crouch_dodge_chance"
			},
			cost = self.costs.pro
		},
		name_id = "menu_sprinter_beta",
		desc_id = "menu_sprinter_beta_desc",
		icon_xy = {
			10,
			5
		}
	}

	-- Overkill
	self.skills.overkill = {
		{
			upgrades = {
				"player_overkill_damage_multiplier"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_overkill_damage_multiplier_2",
				"player_overkill_all_weapons",
				"weapon_swap_speed_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_overkill_beta",
		desc_id = "menu_overkill_beta_desc",
		icon_xy = {
			3,
			2
		}
	}

	-- Surefire (Mag Plus)
	self.skills.fast_fire = {
		{
			upgrades = {
				"player_automatic_mag_increase_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_automatic_mag_increase_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_fast_fire_beta",
		desc_id = "menu_fast_fire_beta_desc",
		icon_xy = {
			10,
			2
		}
	}

	-- Body Expertise
	self.skills.body_expertise = {
		{
			upgrades = {
				"player_ap_bullets_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"weapon_automatic_head_shot_add_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_body_expertise_beta",
		desc_id = "menu_body_expertise_beta_desc",
		icon_xy = {
			10,
			3
		}
	}

	-- Bulletstorm
	self.skills.bandoliers = {
		{
			upgrades = {
				"temporary_no_ammo_cost_1"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"temporary_no_ammo_cost_2"
			},
			cost = self.costs.pro
		},
		name_id = "menu_ammo_reservoir_beta",
		desc_id = "menu_ammo_reservoir_beta_desc",
		icon_xy = {
			4,
			5
		}
	}

	-- Fully Loaded
	self.skills.carbon_blade = {
		{
			upgrades = {
				"player_regain_throwable_from_ammo_1"	
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"extra_ammo_multiplier1",
				"player_pick_up_ammo_multiplier",
				"player_pick_up_ammo_multiplier_2"
				
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_bandoliers_beta",
		desc_id = "menu_bandoliers_beta_desc",
		icon_xy = {
			3,
			0
		}
	}

	-- Saw Massacre
	self.skills.ammo_reservoir = {
		{
			upgrades = {
				"saw_enemy_slicer"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"saw_ignore_shields_1",
				"saw_panic_when_kill_1"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_carbon_blade_beta",
		desc_id = "menu_carbon_blade_beta_desc",
		icon_xy = {
			0,
			2
		}
	}

	-- Rifleman
	self.skills.rifleman = {
		{
			upgrades = {
				"snp_zoom_increase",
				"smg_zoom_increase",
				"lmg_zoom_increase",
				"pistol_zoom_increase",
				"player_steelsight_normal_movement_speed"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"assault_rifle_zoom_increase",
				"assault_rifle_move_spread_index_addend",
				"snp_move_spread_index_addend",
				"smg_move_spread_index_addend"
			},
			cost = self.costs.pro
		},
		name_id = "menu_rifleman_beta",
		desc_id = "menu_rifleman_beta_desc",
		icon_xy = {
			6,
			5
		}
	}

	-- Marksman
	self.skills.sharpshooter = {
		{
			upgrades = {
				"weapon_enter_steelsight_speed_multiplier",
				"weapon_single_spread_index_addend"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"single_shot_accuracy_inc_1"
			},
			cost = self.costs.pro
		},
		name_id = "menu_sharpshooter_beta",
		desc_id = "menu_sharpshooter_beta_desc",
		icon_xy = {
			8,
			1
		}
	}

	-- Confident
	self.skills.cable_guy = {
		{
			upgrades = {
				"player_intimidate_range_mul",
				"player_intimidate_aura",
				"player_civ_intimidation_mul"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"team_damage_hostage_absorption"
			},
			cost = self.costs.pro
		},
		name_id = "menu_cable_guy_beta",
		desc_id = "menu_cable_guy_beta_desc",
		icon_xy = {
			2,
			8
		}
	}

	-- Forced Friendship
	self.skills.triathlete = {
		{
			upgrades = {
				"cable_tie_interact_speed_multiplier"
			},
			cost = self.costs.default
		},
		{
			upgrades = {
				"cable_tie_quantity"
			},
			cost = self.costs.pro
		},
		name_id = "menu_triathlete_beta",
		desc_id = "menu_triathlete_beta_desc",
		icon_xy = {
			4,
			7
		}
	}

	-- Berserker
	self.skills.frenzy = {
		{
			upgrades = {
				"player_melee_damage_health_ratio_multiplier"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_damage_health_ratio_multiplier"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_wolverine_beta",
		desc_id = "menu_wolverine_beta_desc",
		icon_xy = {
			2,
			2
		}
	}

	-- Frenzy
	self.skills.wolverine = {
		{
			upgrades = {
				"player_healing_reduction_1",
				"player_health_damage_reduction_1",
				"player_max_health_reduction_1"
			},
			cost = self.costs.hightier
		},
		{
			upgrades = {
				"player_healing_reduction_2",
				"player_health_damage_reduction_2"
			},
			cost = self.costs.hightierpro
		},
		name_id = "menu_frenzy",
		desc_id = "menu_frenzy_desc",
		icon_xy = {
			11,
			8
		}
	}

	-- Remove 15% dodge boost from Hackers botnet card
	table.delete(self.specializations[21][9].upgrades, "player_passive_dodge_chance_2")
	
	-- Remove 20% armor from Armorer
	table.delete(self.specializations[3][1].upgrades, "player_tier_armor_multiplier_2")
	table.delete(self.specializations[3][3].upgrades, "player_tier_armor_multiplier_3")
	table.delete(self.specializations[3][9].upgrades, "player_tier_armor_multiplier_6")
	table.insert(self.specializations[3][3].upgrades, "player_tier_armor_multiplier_2")
	table.insert(self.specializations[3][5].upgrades, "player_tier_armor_multiplier_3")
	table.insert(self.specializations[3][5].upgrades, "player_tier_armor_multiplier_5")

	-- Give more armor to Hitman
	table.insert(self.specializations[5][7].upgrades, "player_tier_armor_multiplier_1")
	table.insert(self.specializations[5][7].upgrades, "player_tier_armor_multiplier_2")
	
	-- Give faster swap speed and 1s godmode to Yakuza
	table.insert(self.specializations[12][9].upgrades, "weapon_passive_swap_speed_multiplier_1")
	table.insert(self.specializations[12][9].upgrades, "temporary_armor_break_invulnerable_1")
	table.insert(self.specializations[12][9].upgrades, "temporary_armor_break_invulnerable_2")
	
	-- Remove self revive on leech
	table.delete(self.specializations[22][9].upgrades, "player_activate_ability_downed") 
end

-- More description stuff
Hooks:Add("LocalizationManagerPostInit", "descs", function(loc)

	-- Duck and Cover shit
	loc:add_localized_strings( {
		menu_sprinter_beta_desc = "BASIC: ##$basic##\nYour stamina starts regenerating ##$multibasic## earlier and ##$multibasic2## faster. You also sprint ##$multibasic2## faster. \n\nACE: ##$pro##\nYou have a ##$multipro## increased chance to dodge while crouching."
	})	

	-- Overkill shit
	loc:add_localized_strings( {
		menu_overkill_beta_desc = "BASIC: ##$basic##\nWhen you kill an enemy with a shotgun or the OVE9000 portable saw, you receive a ##$multibasic## damage increase for ##$multibasic2## seconds.\n\nACE: ##$pro##\nThe damage bonus now applies to all weapons and lasts ##$multipro2## seconds. Skill must still be activated using a Shotgun or the OVE9000 portable saw. Your weapon swap speed is increased by ##80%##.\n\nNote: Does not apply to melee damage, throwables, grenade launchers, or rocket launchers."
	})

	-- Surefire shit and renaming to Mag Plus
	loc:add_localized_strings( {
		menu_fast_fire_beta_desc = "BASIC: ##$basic##\nYour SMGs, LMGs and Assault Rifles gain ##$multibasic## more bullets in their magazine.\n\nACE: ##$pro##\nYour SMGs, LMGs and Assault Rifles gain ##$multipro## additional bullets in their magazine.\n\nNote: This does not affect the Aced \"Lock n' Load\" skill."
	})

	-- Body Expertise shit
	loc:add_localized_strings( {
		menu_body_expertise_beta_desc = "BASIC: ##$basic##\nAll of your ranged weapons can now pierce through enemy body armor. Does not apply to throwable weapons.\n\nACE: ##$pro##\n##$multipro## from the bonus headshot damage is permanently applied to hitting enemies on the body. This skill is only activated by SMGs, LMGs, Assault Rifles or Special Weapons fired in automatic fire mode."
	})

	-- Fully Loaded shit
	loc:add_localized_strings( {
		menu_bandoliers_beta_desc = "BASIC: ##$basic##\nYou gain a ##$multibasic## base chance to get a throwable from an ammo box. The base chance is increased by ##$multibasic2## for each ammo box you pick up that does not contain a throwable. When a throwable has been found, the chance is reset to its base value.\n\nACE: ##$pro##\nYour total ammo capacity is increased by ##$multipro2##. The amount of ammo you gain from ammo boxes is increased by ##$multipro3##.\n\nNote: Does not stack with the \"Walk-in Closet\" perk."
	})
	
	-- Rifleman shit
	loc:add_localized_strings( {
		menu_rifleman_beta_desc = "BASIC: ##$basic##\nYour movement speed is unhindered while using steel sight. Your weapon zoom level is increased by ##$multibasic## with all weapons.\n\nACE: ##$pro##\nYour weapon accuracy while moving with SMGs, Assault Rifles and Sniper Rifles is increased by ##$multipro2##."
	})

	-- Marksman shit
	loc:add_localized_strings( {
		menu_sharpshooter_beta_desc = "BASIC: ##$basic##\nYour snap to zoom is ##$multibasic## faster with all weapons. You gain ##$multibasic2## weapon accuracy with all SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode.\n\nACE: ##$pro##\nYou gain a ##$multipro## accuracy bonus while aiming down sights with all SMGs, Assault Rifles and Sniper Rifles fired in single shot fire mode."
	})

	-- Unseen Strike shit
	loc:add_localized_strings( {
		menu_unseen_strike_beta_desc = "BASIC: ##$basic##\nIf you do not lose any armor or health for ##$multibasic## seconds, you gain a ##$multibasic2## critical hit chance for ##$multibasic3## seconds.\n\nACE: ##$pro##\nThe critical hit chance is increased to ##$multipro## and the duration is increased to ##$multipro2## seconds."
	})

	-- Confident shit
	loc:add_localized_strings( {
		menu_cable_guy_beta_desc = "BASIC: ##$basic##\nThe power and range of your intimidation is increased by ##$multibasic2##.\n\nACE: ##$pro##\nYou and your crew gain ##$multipro## damage absorption for each hostage you have. This effect stacks with up to a maximum of ##$multipro2## hostages."
	})

	-- Forced Friendshit
	loc:add_localized_strings( {
		menu_triathlete_beta_desc = "BASIC: ##$basic##\nYou can cable tie hostages ##$multibasic## faster.\n\nACE: ##$pro##\nIncrease your supply of cable ties by ##$multipro##."
	})

	-- Hacker shit
	loc:add_localized_strings({
		menu_deck21_9_desc = "Crew members killing enemies while the feedback effect is active will regenerate ##$multiperk## health."
	})

	-- Hitman shit
	loc:add_localized_strings({
		menu_deck5_7_desc = "Your armor recovery rate is increased by an additional ##$multiperk##.\n\nYou gain ##$multiperk2## more armor."
	})

	-- Yakuza shit
	loc:add_localized_strings({
		menu_deck12_9_desc = "All berserker state effects in this perk deck will start at ##$multiperk## health instead of ##$multiperk2##.\n\nWhen your armor gets depleted you will be immune to health damage for ##$multiperk3## second. This cannot occur more often than once every ##$multiperk4## seconds.\n\nIncreases weapon swapping speed by ##$multiperk5##."
	})

	-- Leech shit
	loc:add_localized_strings({
		menu_deck22_9_desc = "While the Leech Ampule is active your health is now divided into segments of ##$multiperk##.\n\nYour maximum health is increased by ##$multiperk2##.\n\nDeck Completion Bonus: Your chance of getting a higher quality item during a Payday is increased by ##10%##."
	})

	-- Armorer shit
	loc:add_localized_strings({
		menu_deck3_9_desc = "Reduces the armor recovery time for you and your crew by ##$multiperk2##.\n\nNote: Crew perks do not stack."
	})
end )
