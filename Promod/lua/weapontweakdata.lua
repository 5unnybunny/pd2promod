Hooks:PostHook(WeaponTweakData, "init", "promod", function(self)

-- The idea here is to revert some of the changes, but also keep some good ones (lmao 160 damage repeater and rattlesnake, nice one jules)
-- Not only that but i will generally properly rebalance things i'm not fine with
-- Also going to bring back forgotten dynamic recoil mechanic (based on stance: standing / crouching / steelsight), only going to use standing / steelsight stances though

-- For Reference OD Head Health of enemies with perk deck boost
-- Light - 150
-- Heavy - 300
-- Cloaker - 300
-- Taser - 600
-- Medic - 450
-- Dozer - 2250
-- Minidozer - 1875


-- Sniper Rifles


-- Contractor
self.tti.stats.concealment = 10
self.tti.AMMO_PICKUP = {1.75, 2.8}
self.tti.kick.standing = {2, 3.8, -0.3, 0.3}
self.tti.kick.crouching = self.tti.kick.standing
self.tti.kick.steelsight = self.tti.kick.standing

-- Grom
self.siltstone.stats.concealment = 20
self.siltstone.AMMO_PICKUP = {1.75, 2.8}
self.siltstone.kick.standing = {2, 3, -0.3, 0.3}
self.siltstone.kick.crouching = self.siltstone.kick.standing
self.siltstone.kick.steelsight = self.siltstone.kick.standing

-- Kang Arms (who even fucking cares about it, just copy paste contractor stats)
self.qbu88.CLIP_AMMO_MAX = 10
self.qbu88.AMMO_MAX = 40
self.qbu88.AMMO_PICKUP = {1.75, 2.8}
self.qbu88.kick.standing = {2, 3.8, -0.3, 0.3}
self.qbu88.kick.crouching = self.qbu88.kick.standing
self.qbu88.kick.steelsight = self.qbu88.kick.standing

-- Lebensauger
self.wa2000.stats.damage = 110
self.wa2000.stats_modifiers = {damage = 2}
self.wa2000.CLIP_AMMO_MAX = 15
self.wa2000.AMMO_MAX = 30
self.wa2000.AMMO_PICKUP = {1.4, 2.65}
self.wa2000.fire_mode_data.fire_rate = 60 / 135
self.wa2000.kick.standing = {2.2, 4.4, -0.3, 0.3}
self.wa2000.kick.crouching = self.wa2000.kick.standing
self.wa2000.kick.steelsight = self.wa2000.kick.standing
self.wa2000.stats.reload = 13

-- Rangehitter 
self.sbl.fire_mode_data.fire_rate = 60 / 120
self.sbl.stats.damage = 110
self.sbl.CLIP_AMMO_MAX = 10
self.sbl.AMMO_MAX = 40
self.sbl.stats_modifiers = {damage = 2}
self.sbl.AMMO_PICKUP = {1.4, 2.65}
self.sbl.stats.reload = 13

-- Repeater
self.winchester1874.stats.damage = 150
self.winchester1874.stats_modifiers = {damage = 2}
self.winchester1874.fire_mode_data.fire_rate = 60 / 100
self.winchester1874.AMMO_PICKUP = {1.35, 2.65}
self.winchester1874.AMMO_MAX = 30

-- Rattlesnake
self.msr.stats.damage = 150
self.msr.stats_modifiers = {damage = 2}
self.msr.fire_mode_data.fire_rate = 60 / 83
self.msr.AMMO_PICKUP = {1.35, 2.65}
self.msr.AMMO_MAX = 30

-- R700
self.r700.stats.damage = 150
self.r700.stats_modifiers = {damage = 2}
self.r700.AMMO_PICKUP = {1.35, 2.65}
self.r700.fire_mode_data.fire_rate = 60 / 83
self.r700.AMMO_MAX = 30
self.r700.kick.crouching = self.r700.kick.standing
self.r700.kick.steelsight = self.r700.kick.standing

-- Desert Fox
self.desertfox.stats.damage = 145
self.desertfox.stats_modifiers = {damage = 4}
self.desertfox.fire_mode_data.fire_rate = 60 / 83
self.desertfox.AMMO_PICKUP = {0.9, 1.2}

-- Nagant
self.mosin.stats.damage = 145
self.mosin.stats_modifiers = {damage = 4}
self.desertfox.fire_mode_data.fire_rate = 60 / 83
self.mosin.AMMO_PICKUP = {0.9, 1.2}

-- R93
self.r93.stats.damage = 145
self.r93.stats_modifiers = {damage = 4}
self.r93.fire_mode_data.fire_rate = 60 / 83
self.r93.AMMO_PICKUP = {0.9, 1.2}

-- Platypus
self.model70.stats.damage = 145
self.model70.stats_modifiers = {damage = 4}
self.model70.fire_mode_data.fire_rate = 60 / 83
self.model70.AMMO_PICKUP = {0.9, 1.2}

-- Thanatos
self.m95.stats.damage = 200
self.m95.stats_modifiers = {damage = 50}


-- Light Machine Guns


-- KSP
self.m249.AMMO_PICKUP = {8, 9.5}
self.m249.kick.standing = {0.6, 1.2, -1.2, 1.3}
self.m249.kick.crouching = self.m249.kick.standing
self.m249.kick.steelsight = {0.5, 1, -1.2, 1.4}

-- Buzzsaw
self.mg42.AMMO_PICKUP = {8, 9.5}
self.mg42.kick.standing = {0.6, 1.2, -1.2, 1.3}
self.mg42.kick.crouching = self.mg42.kick.standing
self.mg42.kick.steelsight = {0.5, 1, -1.2, 1.4}
self.mg42.stats.reload = 13

-- KSP 58
self.par.AMMO_PICKUP = {8, 9.5}
self.par.kick.standing = {0.6, 1.2, -1.2, 1.3}
self.par.kick.crouching = self.par.kick.standing
self.par.kick.steelsight = {0.5, 1, -1.2, 1.4}

-- Brenner 
self.hk21.stats.spread = 14
self.hk21.AMMO_PICKUP = {8, 9}
self.hk21.kick.standing = {0.6, 1, -1.1, 1.2}
self.hk21.kick.crouching = self.hk21.kick.standing
self.hk21.kick.steelsight = {0.3, 0.9, -1, 1.1}
self.hk21.stats.reload = 12

-- RPK
self.rpk.stats.spread = 10
self.rpk.AMMO_PICKUP = {8, 9}
self.rpk.kick.standing = {0.6, 1, -1.1, 1.2}
self.rpk.kick.crouching = self.rpk.kick.standing
self.rpk.kick.steelsight = {0.3, 0.9, -1, 1.1}

-- M60
self.rpk.AMMO_PICKUP = {8, 9}
self.rpk.kick.standing = {0.6, 1, -1.1, 1.2}
self.rpk.kick.crouching = self.rpk.kick.standing
self.rpk.kick.steelsight = {0.3, 0.9, -1, 1.1}

-- Shotguns

-- Izhma
self.saiga.rays = 12
self.saiga.stats.spread = 12
self.saiga.AMMO_PICKUP = {3, 4}
self.saiga.kick.standing = {2.5, 3.2, -0.2, 0.2}
self.saiga.kick.crouching = self.saiga.kick.standing
self.saiga.kick.steelsight = self.saiga.kick.standing

-- Steakout
self.aa12.rays = 12
self.aa12.stats.spread = 12
self.aa12.AMMO_PICKUP = {3, 4}
self.aa12.kick.standing = {2.5, 3.2, -0.2, 0.2}
self.aa12.kick.crouching = self.aa12.kick.standing
self.aa12.kick.steelsight = self.aa12.kick.standing

-- M1014
self.benelli.rays = 12
self.benelli.stats.spread = 12
self.benelli.AMMO_PICKUP = {2.5, 3.5}
self.benelli.kick.standing = {1.8, 2, -0.2, 0.2}
self.benelli.kick.crouching = self.benelli.kick.standing
self.benelli.kick.steelsight = self.benelli.kick.standing

-- Predator
self.spas12.rays = 12
self.spas12.stats.spread = 12
self.spas12.AMMO_PICKUP = {2.6, 3.6}
self.spas12.kick.standing = {1.3, 1.5, -0.2, 0.2}
self.spas12.kick.crouching = self.spas12.kick.standing
self.spas12.kick.steelsight = self.spas12.kick.standing

-- Raven
self.ksg.rays = 12
self.ksg.stats.damage = 130
self.ksg.fire_mode_data.fire_rate = 60 / 120
self.ksg.kick.standing = {2, 3, -0.2, 0.2}
self.ksg.kick.crouching = self.ksg.kick.standing
self.ksg.kick.steelsight = self.ksg.kick.standing

-- Reinfeld 880
self.r870.rays = 12
self.r870.stats.damage = 130
self.r870.fire_mode_data.fire_rate = 60 / 120
self.r870.kick.standing = {2, 3, -0.2, 0.2}
self.r870.kick.crouching = self.r870.kick.standing
self.r870.kick.steelsight = self.r870.kick.standing

-- Reinfeld 88 (Trench Gun)
self.m1897.rays = 12
self.m1897.stats.damage = 130
self.m1897.AMMO_PICKUP = {0.42, 1.47}
self.m1897.kick.standing = {2, 3, -0.2, 0.2}
self.m1897.kick.crouching = self.m1897.kick.standing
self.m1897.kick.steelsight = self.m1897.kick.standing

-- Mosconi Tactical
self.m590.rays = 12
self.m590.stats.damage = 130
self.m590.fire_mode_data.fire_rate = 60 / 120
self.m590.kick.standing = {2, 3, -0.2, 0.2}
self.m590.kick.crouching = self.m590.kick.standing
self.m590.kick.steelsight = self.m590.kick.standing 

-- Mosconi
self.huntsman.rays = 12
self.huntsman.stats.damage = 190
self.huntsman.AMMO_PICKUP = {0.42, 1.47}

-- Joceline
self.b682.rays = 12
self.b682.stats.damage = 190
self.b682.AMMO_PICKUP = {0.42, 1.47}

-- Breaker
self.boot.rays = 12
self.boot.stats.damage = 190
self.boot.AMMO_PICKUP = {0.42, 1.2}

-- Grimm (&akimbo)
self.basset.rays = 12
self.basset.AMMO_PICKUP = {2, 3}
self.basset.kick.standing = {2, 3, -0.2, 0.2}
self.basset.kick.crouching = self.basset.kick.standing
self.basset.kick.steelsight = self.basset.kick.standing
self.x_basset.rays = 12
self.x_basset.AMMO_PICKUP = {3, 4}
self.x_basset.kick.standing = {2, 3, -0.2, 0.2}
self.x_basset.kick.crouching = self.x_basset.kick.standing
self.x_basset.kick.steelsight = self.x_basset.kick.standing

-- Goliath (&akimbo)
self.rota.rays = 12
self.rota.AMMO_PICKUP = {1.5, 2.5}
self.rota.kick.standing = {1.8, 2, -0.2, 0.2}
self.rota.kick.crouching = self.rota.kick.standing
self.rota.kick.steelsight = self.rota.kick.standing
self.x_rota.rays = 12
self.x_rota.AMMO_PICKUP = {1.65, 2.65}
self.x_rota.kick.standing = {2, 3, -0.2, 0.2}
self.x_rota.kick.crouching = self.x_rota.kick.standing
self.x_rota.kick.steelsight = self.x_rota.kick.standing

-- Judge (&akimbo)
self.judge.rays = 12
self.judge.stats.damage = 190
self.judge.AMMO_PICKUP = {0.275, 0.65}
self.judge.AMMO_MAX = 25
self.x_judge.rays = 12
self.x_judge.stats.damage = 190

-- Claire
self.coach.rays = 12
self.coach.stats.damage = 190
self.coach.AMMO_PICKUP = {0.25, 0.65}

-- GSPS 
self.m37.rays = 12
self.m37.stats.damage = 190
self.m37.AMMO_PICKUP = {0.42, 1.2}

-- Loco
self.serbu.rays = 12

-- Sweeper
self.striker.rays = 12
self.striker.AMMO_PICKUP = {1.75, 2.65}
self.striker.kick.standing = {1.8, 2, -0.2, 0.2}
self.striker.kick.crouching = self.striker.kick.standing
self.striker.kick.steelsight = self.striker.kick.standing

-- DMRs

-- Cavity
self.sub2000.stats.damage = 170
-- M308
self.new_m14.stats.damage = 170
-- Galant
self.ching.stats.damage = 170


-- Pistols

-- Peacemaker
self.peacemaker.stats.damage = 160
self.peacemaker.stats_modifiers = {damage = 2}
self.peacemaker.stats.reload = 17
self.peacemaker.AMMO_PICKUP = {0.26, 0.67}
self.peacemaker.can_shoot_through_enemy = true
self.peacemaker.can_shoot_through_shield = true
self.peacemaker.can_shoot_through_wall = true
self.peacemaker.kick = self.glock_17.kick.standing
self.peacemaker.kick.crouching = self.glock_17.kick.standing
self.peacemaker.kick.steelsight = self.glock_17.kick.standing

-- Angry Tiger
self.rsh12.stats.damage = 160
self.rsh12.stats_modifiers = {damage = 2}
self.rsh12.stats.reload = 13
self.rsh12.AMMO_PICKUP = {0.26, 0.67}
self.rsh12.can_shoot_through_enemy = true
self.rsh12.can_shoot_through_shield = true
self.rsh12.can_shoot_through_wall = true
self.rsh12.kick.standing = {2.9, 3, -0.5, 0.5}
self.rsh12.kick.crouching = self.rsh12.kick.standing
self.rsh12.kick.steelsight = self.rsh12.kick.standing

-- Bronco
self.new_raging_bull.stats.damage = 140
self.new_raging_bull.stats.reload = 13
self.new_raging_bull.stats_modifiers = {damage = 2}
self.x_rage.stats.damage = 140
self.x_rage.stats_modifiers = {damage = 2}

-- Castigo
self.chinchilla.stats.damage = 140
self.chinchilla.stats.reload = 13
self.chinchilla.stats_modifiers = {damage = 2}
self.x_chinchilla.stats.damage = 140
self.x_chinchilla.stats_modifiers = {damage = 2}

-- Frenchman
self.model3.stats.damage = 175
self.x_model3.stats.damage = 175

-- Matever
self.mateba.stats.damage = 140
self.mateba.stats_modifiers = {damage = 2}
self.x_2006m.stats.damage = 140
self.x_2006m.stats_modifiers = {damage = 2}

-- Baby Deagle
self.sparrow.stats.damage = 140
self.x_sparrow.stats.damage = 140

-- Deagle
self.deagle.stats.damage = 140
self.x_deagle.stats.damage = 140

-- Chunky Crosskil
self.m1911.stats.damage = 135
self.x_m1911.stats.damage = 135

-- White Streak
self.pl14.stats.damage = 140
self.x_pl14.stats.damage = 140


self.akmsu.stats.damage = 80
end)

	-- NPC weapon edits
Hooks:PostHook(WeaponTweakData, "_init_data_g36_npc", "promod", function (self)
	self.g36_npc.categories = {
		"smg"
	}
end)
Hooks:PostHook(WeaponTweakData, "_set_sm_wish", "promod", function(self)
	self.raging_bull_npc.DAMAGE = 1 -- Set damage to 1 to make creating weapon presets easier
	self.ak47_ass_npc.DAMAGE = 1 -- Set damage to 1 to make creating weapon presets easier
	self.m4_npc.DAMAGE = 1 -- Set damage to 1 to make creating weapon presets easier
	self.m4_npc.auto.fire_rate = 0.17 -- Increase the rof a bit to make it obey grace periods properly
	self.g36_npc.DAMAGE = 1 -- Set damage to 1 to make creating weapon presets easier
	self.m4_yellow_npc.auto.fire_rate = 0.17 -- Increase the rof a bit to make it obey grace periods properly
	self.m4_yellow_npc.DAMAGE = 1 -- Set damage to 1 to make creating weapon presets easier
	self.r870_npc.CLIP_AMMO_MAX = 8 -- They use  8rnd (if not 10rnd even) tube
	self.saiga_npc.CLIP_AMMO_MAX = 20 -- Saiga dozers are useless with 7rnd mag
	self.benelli_npc.CLIP_AMMO_MAX = 8 -- They use the 8rnd tube
	self.benelli_npc.sounds.prefix = "benelli_m4_npc" -- Give it a proper sound
end)