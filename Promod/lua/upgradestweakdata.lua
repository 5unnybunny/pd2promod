local old_init = UpgradesTweakData.init
function UpgradesTweakData:init(tweak_data)
	old_init(self, tweak_data)

	-- Weapons
	-------------
	
	-- LMG / Minigun movement penalties revert
	self.weapon_movement_penalty.lmg = 0.8
	self.weapon_movement_penalty.minigun = 0.8


	-- Skills
	-------------

	-- Mastermind --

	-- Uppers Range Decrease
	self.values.first_aid_kit.first_aid_kit_auto_recovery[1] = 300
	self.skill_descs.tea_cookies.multipro2 = "3"

	-- 60s inspire cooldown
	self.values.cooldown.long_dis_revive[1][2] = 60
	self.skill_descs.inspire.multipro2 = "60"

	-- FFriendship description stuff
	self.skill_descs.triathlete.multibasic = "75%"
	self.skill_descs.triathlete.multipro = "4"

	-- Confident ace now has buffed damage absorption from FF
	self.values.team.damage = {
		hostage_absorption = {
			0.5
		},
		hostage_absorption_limit = 5
	}
	self.skill_descs.cable_guy.multipro = "5"
	self.skill_descs.cable_guy.multipro2 = "5"

	-- Hostage taker basic buff and aced nerf
	self.values.player.hostage_health_regen_addend = {
		0.02,
		0.04
	}
	self.skill_descs.black_marketeer.multibasic = "2%"
	self.skill_descs.black_marketeer.multipro = "4%"

	-- Rifleman description stuff
	self.skill_descs.rifleman.multibasic = "25%"
	
	-- Marksman description stuff
	self.skill_descs.sharpshooter.multibasic = "100%"
	self.skill_descs.sharpshooter.multibasic2 = "8"
	self.skill_descs.sharpshooter.multipro = "20%"

	-- Aggressive Reload ace 65% boost and 3s duration
	self.values.temporary.single_shot_fast_reload[1][1] = 1.65
	self.values.temporary.single_shot_fast_reload[1][2] = 3
	self.skill_descs.speedy_reload.multipro = "65%"
	self.skill_descs.speedy_reload.multipro2 = "3"

	-- Graze nerf
	self.values.snp.graze_damage = {
		{
			radius = 75,
			damage_factor = 0.4,
			damage_factor_headshot = 0.4
		},
		{
			radius = 75,
			damage_factor = 0.4,
			damage_factor_headshot = 0.9
		}
	}
	self.skill_descs.single_shot_ammo_return.multibasic = "40%"
	self.skill_descs.single_shot_ammo_return.multibasic2 = "75cm"
	self.skill_descs.single_shot_ammo_return.multipro = "90%"
	self.skill_descs.single_shot_ammo_return.multipro2 = "40%"

	-- Enforcer --

	-- 8s long basic ovk and 16s long aced
	self.definitions.player_overkill_damage_multiplier_2 = {
		name_id = "menu_player_overkill_damage_multiplier",
		category = "temporary",
		upgrade = {
			value = 2,
			upgrade = "overkill_damage_multiplier",
			category = "temporary"
		}
	}
	self.values.temporary.overkill_damage_multiplier = {
		{
			1.75,
			8
		},
		{
			1.75,
			16
		}
	}
	self.skill_descs.overkill.multibasic2 = "8"
	self.skill_descs.overkill.multipro2 = "16"

	-- Close By aced nerf (15 shells down to 5 shells)
	self.values.shotgun.magazine_capacity_inc[1] = 5
	self.skill_descs.close_by.multipro2 = "5"

	-- Correct Bulletstorm Description
	self.skill_descs.bandoliers.multibasic = "5"
	self.skill_descs.bandoliers.multipro = "20"

	-- Saw Massacre desc
	self.skill_descs.ammo_reservoir.multibasic2 = "50%"
	self.skill_descs.ammo_reservoir.multipro = "50%"
	self.skill_descs.ammo_reservoir.multipro3 = "10"

	-- Slight Fully Loaded nerf as it's a T3 skill instead
	self.values.player.regain_throwable_from_ammo[1].chance = 0.015
	self.values.player.regain_throwable_from_ammo[1].chance_inc = 1.05
	self.values.player.extra_ammo_multiplier[1] = 1.25
	self.values.player.pick_up_ammo_multiplier = {1.35, 1.45}
	self.skill_descs.carbon_blade.multibasic = "1.5%"
	self.skill_descs.carbon_blade.multibasic2 = "5%"
	self.skill_descs.carbon_blade.multipro2 = "25%"
	self.skill_descs.carbon_blade.multipro3 = "45%"

	-- Technician --

	-- Surefire is divided into 5 bullets for basic and 15 bullets for aced 
	self.definitions.player_automatic_mag_increase_2 = {
		name_id = "menu_automatic_mag_increase",
		category = "feature",
		upgrade = {
			value = 2,
			upgrade = "automatic_mag_increase",
			category = "player"
		}
	}
	self.values.player.automatic_mag_increase = {
		5,
		15
	}
	self.skill_descs.fast_fire.multibasic = "5"
	self.skill_descs.fast_fire.multipro = "10"

	-- Body Expertise basic gives armor piercing and aced applies 35% of the headshot damage to the body
	self.values.weapon.automatic_head_shot_add = { 0.45, 0.9 } -- can't be fucked to make the upgrade have only 1 value
	self.skill_descs.body_expertise.multipro = "45%"
	
	-- Ghost --

	-- DnC gives boost on crouch instead of running
	self.values.player.crouch_dodge_chance[1] = 0.1
	self.definitions.player_crouch_dodge_chance = {
		name_id = "menu_player_crouch_dodge_chance",
		category = "feature",
		upgrade = {
			value = 1,
			upgrade = "crouch_dodge_chance",
			category = "player"
		}
	}

	-- HVT Buff
	self.values.player.marked_enemy_damage_mul = 1.25
	self.skill_descs.hitman.multibasic = "25%"
	self.skill_descs.hitman.multipro = "65%"
	self.skill_descs.hitman.multipro2 = "10"
	self.skill_descs.hitman.multipro3 = "100%"

	-- The Professional nerf
	self.values.weapon.silencer_spread_index_addend[1] = 2 -- 8 accuracy
	self.values.weapon.silencer_recoil_index_addend[1] = 1 -- 4 stability
	self.skill_descs.silence_expert.multibasic = "4"
	self.skill_descs.silence_expert.multipro3 = "8"

	-- Unseen Strike nerf
	self.values.temporary.unseen_strike = {
		{
			1.2,
			5
		},
		{
			1.3,
			10
		}
	}
	self.skill_descs.unseen_strike.multibasic2 = "20%"
	self.skill_descs.unseen_strike.multibasic3 = "5"
	self.skill_descs.unseen_strike.multipro = "30%"
	self.skill_descs.unseen_strike.multipro2 = "10"

	-- Fugitive --

	-- Trigger Happy rework
	self.values.pistol.stacking_hit_damage_multiplier = {
		{
			max_stacks = 4,
			max_time = 3,
			damage_bonus = 1.25
		},
		{
			max_stacks = 4,
			max_time = 8,
			damage_bonus = 1.25
		}
	}
	-- what the fuck are these description values
	self.skill_descs.trigger_happy.multibasic4 = "25%"
	self.skill_descs.trigger_happy.multibasic2 = "3"
	self.skill_descs.trigger_happy.multibasic3 = "4"
	self.skill_descs.trigger_happy.multipro2 = "8"

	-- Pumping Iron buff
	self.values.player.non_special_melee_multiplier[1] = 3
	self.skill_descs.steroids.multibasic = "200%"

	-- Bloodthirst nerf
	self.values.player.melee_damage_stacking.max_multiplier = 6
	self.skill_descs.bloodthirst.multibasic2 = "600%"

	-- Frenzy desc
	self.skill_descs.wolverine.multibasic = "30%"
	self.skill_descs.wolverine.multibasic2 = "10%"
	self.skill_descs.wolverine.multibasic3 = "75%"
	self.skill_descs.wolverine.multipro = "25%"
	self.skill_descs.wolverine.multipro2 = "0%"

	-- Zerk desc
	self.skill_descs.frenzy.multibasic3 = "50%"
	self.skill_descs.frenzy.multibasic2 = "250%"
	self.skill_descs.frenzy.multipro3 = "50%"
	self.skill_descs.frenzy.multipro2 = "100%"


	-- Perk Decks
	-------------

	-- Increase Muscles health regen to 4.5%
	self.values.player.passive_health_regen[1] = 0.045
	self.specialization_descs[2][9].multiperk2 = "4.5%"

	-- Hitman 7th card desc and faster armor recovery rate
	self.specialization_descs[5][7].multiperk = "10%"
	self.specialization_descs[5][7].multiperk2 = "10%"
	self.values.player.perk_armor_regen_timer_multiplier[5] = 0.4
	self.specialization_descs[5][9].multiperk = "25%"

	-- Armorer desc stuff
	self.specialization_descs[3][1].multiperk = "5%"
	self.specialization_descs[3][3].multiperk = "5%"
	self.specialization_descs[3][5].multiperk = "5%"

	-- Anarchist additional armor on conversion decrease
	self.values.player.armor_increase = {
		1,
		1.025,
		1.05
	}
	self.specialization_descs[15][5].multiperk2 = "102.5%"
	self.specialization_descs[15][7].multiperk2 = "105%"

	-- Give Crook higher armor bonus
	self.values.player.level_2_armor_multiplier[3] = 1.7
	self.values.player.level_3_armor_multiplier[3] = 1.7
	self.values.player.level_4_armor_multiplier[3] = 1.7
	self.specialization_descs[6][7].multiperk2 = "30%"

	-- Infiltrator melee healing buff
	self.values.temporary.melee_life_leech = {
		{
			0.05,
			1
		}
	}
	self.specialization_descs[8][9].multiperk = "5%"
	self.specialization_descs[8][9].multiperk2 = "1"

	-- Gambler cooldowns decrease
	for _, v in pairs(self.values.temporary.loose_ammo_restore_health) do
		v[2] = 2
	end
	self.specialization_descs[10][1].multiperk3 = "2"
	self.values.temporary.loose_ammo_give_team[1][2] = 3
	self.specialization_descs[10][3].multiperk2 = "3"

	-- Decrease Grinders stacking cooldown
	self.damage_to_hot_data.stacking_cooldown = 1
	self.specialization_descs[11][1].multiperk4 = 1

	-- I-frames
	self.values.temporary.armor_break_invulnerable = {
		{
			2,
			20
		},
		{
			1,
			9
		}
	}
	self.definitions.temporary_armor_break_invulnerable_2 = {
		name_id = "menu_player_health_multiplier",
		category = "temporary",
		upgrade = {
			value = 2,
			upgrade = "armor_break_invulnerable",
			category = "temporary"
		}
	}

	-- Give yakuza 80% swap speed boost and 1s long i-frames
	self.specialization_descs[12][9].multiperk = "50%"
	self.specialization_descs[12][9].multiperk2 = "25%"
	self.specialization_descs[12][9].multiperk3 = "1"
	self.specialization_descs[12][9].multiperk4 = "8"
	self.specialization_descs[12][9].multiperk5 = "80%"

	-- Make the i-frames cooldown longer on Anar / Armorer
	self.specialization_descs[3][7].multiperk3 = "20"
	self.specialization_descs[15][1].multiperk2 = "20"

	-- Giver biker higher kill cap and higher regen values
	self.wild_trigger_time = 6
	self.wild_max_triggers_per_time = 6
	self.values.player.wild_health_amount[1] = 0.8
	self.values.player.wild_armor_amount[1] = 0.8
	self.specialization_descs[16][1].multiperk = 8
	self.specialization_descs[16][1].multiperk2 = 8
	self.specialization_descs[16][1].multiperk3 = 6
	self.specialization_descs[16][1].multiperk4 = 6

	-- KP 45s inj description
	self.specialization_descs[17][1].multiperk3 = 45
	
	-- less healing from injector, should not completely negate damage below half now
	self.values.temporary.chico_injector = {
		{
			0.7,
			6
		}
	}
	self.specialization_descs[17][1].multiperk = "70%"

	-- Sicario smoke bomb 50s cd and twitch 2s cooldown
	self.values.player.dodge_shot_gain[2] = 2
	self.specialization_descs[18][1].multiperk3 = "50"
	self.specialization_descs[18][3].multiperk2 = "2"

	-- Stoic dot decrease (8s), resist decrease (60%), cd increase (12s)
	self.values.player.damage_control_passive = {
		{
			60,
			12.5
		}
	}
	self.specialization_descs[19][1].multiperk = "60%"
	self.specialization_descs[19][1].multiperk2 = "8"
	self.specialization_descs[19][1].multiperk3 = "12"

	-- Tag Team 5 ab/kill and 3s cd decrease
	self.values.player.tag_team_damage_absorption.kill_gain = 0.5
	self.values.player.tag_team_cooldown_drain = {
		{
			tagged = 0,
			owner = 3
		},
		{
			tagged = 3,
			owner = 3
		}
	}
	self.specialization_descs[20][1].multiperk = "3"
	self.specialization_descs[20][5].multiperk = "5"
	self.specialization_descs[20][9].multiperk = "3"

	-- Leech nerf all around, without much thought cause idc about the deck and honestly just fuck it
	self.copr_ability_cooldown = 60
	self.values.temporary.copr_ability[1][2] = 6
	self.values.temporary.copr_ability[2][2] = 8
	self.values.player.copr_static_damage_ratio[2] = 0.125
	self.values.player.copr_teammate_heal = {
		0.015,
		0.3
	}
	self.specialization_descs[22][1].multiperk4 = "1.5%"
	self.specialization_descs[22][1].multiperk6 = "60"
	self.specialization_descs[22][5].multiperk = "8"
	self.specialization_descs[22][5].multiperk3 = "3%"
	self.specialization_descs[22][9].multiperk = "12.5%"
	
end
