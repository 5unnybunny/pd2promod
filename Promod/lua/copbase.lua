local old_init = CopBase.init

-- credit to hoxi for writing the og copbase code
function CopBase:default_weapon_name()
    local default_weapon_id = self._default_weapon_id
    local weap_ids = tweak_data.character.weap_ids
    local diff_index = tweak_data:difficulty_to_index(Global.game_settings.difficulty)
    
    local m4 = Idstring("units/payday2/weapons/wpn_npc_m4/wpn_npc_m4")
    local r870 = Idstring("units/payday2/weapons/wpn_npc_r870/wpn_npc_r870")
    local benelli = Idstring("units/payday2/weapons/wpn_npc_benelli/wpn_npc_benelli")

    local unit_name = self._unit:name()

    local zeal = unit_name == Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat")
    local balaclava = unit_name == Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
    local murkyrifle = unit_name == Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light/ene_murkywater_light")
    local murkyshotgun = unit_name == Idstring("units/pd2_dlc_bph/characters/ene_murkywater_light_city_r870/ene_murkywater_light_city_r870")
    local fedshotgun = unit_name == Idstring("units/pd2_dlc_bex/characters/ene_swat_policia_federale_city_r870/ene_swat_policia_federale_city_r870")
    

    -- Give m4 to zeal lights
    if zeal then
        return m4
    -- Give m4 to murky light riflemen
    elseif murkyrifle then
        return m4
    -- Give benelli to murky light shotgunners
    elseif murkyshotgun then 
        return benelli
    -- Give benelli to federales light shotgunners
    elseif fedshotgun then
        return benelli
    -- Give r870 to balaclava hrts (they have shells on their model)
    elseif balaclava then
        return r870
    else
        for i_weap_id, weap_id in ipairs(weap_ids) do
            if default_weapon_id == weap_id then
                return tweak_data.character.weap_unit_names[i_weap_id]
            end
        end
    end
end