general_grievous = Creature:new {
	--objectName = "@mob/creature_names:ep3_general_grievous",
	customName = "N-K Necrosis",
	socialGroup = "droids",
	pvpFaction = "",
	faction = "",
	level = 300,
	chanceHit = 19,
	damageMin = 1245,
	damageMax = 2400,
	baseXp = 16884,
	baseHAM = 365000,
	baseHAMmax = 385000,
	armor = 3,
	resists = {80,80,80,80,80,80,80,80,80},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.5,

	templates = {"object/mobile/ep3/general_grievous.iff"},
	lootGroups = {
	 	{
	        groups = {
				{group = "crystal_banes_heart", chance = 400000},
				{group = "g_cybernetics", chance = 100000},
				{group = "g_rifle_naktra_crystal", chance = 1000000},
				{group = "g_knife_naktra_crystal", chance = 1000000},
				{group = "g_ep3_loot_poisonspike", chance = 1000000},
				{group = "g_wookiee_knuckler", chance = 1000000},
				{group = "g_carbine_dc15", chance = 1000000},
				{group = "g_rifle_dc15", chance = 1000000},
				{group = "g_pistol_flare", chance = 1000000},
				{group = "g_pistol_kyd21", chance = 1000000},
				{group = "g_barc_speeder", chance = 1000000},
				{group = "g_magnaguard_loot_schem", chance = 500000},
				

			},
			lootChance = 10000000
		},
		{
		groups = {
				
				{group = "g_pistol_flare", chance = 2500000},
				{group = "g_pistol_kyd21", chance = 2500000},
				{group = "g_barc_speeder", chance = 1000000},
				{group = "g_cybernetics", chance = 500000},
				{group = "g_rifle_dc15", chance = 2500000},				
				{group = "g_magnaguard_loot_schem", chance = 1000000}
			},
			lootChance = 10000000
		}
		
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster)
}

CreatureTemplates:addCreatureTemplate(general_grievous, "general_grievous")
