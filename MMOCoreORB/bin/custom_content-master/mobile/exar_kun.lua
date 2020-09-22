exar_kun = Creature:new {
	customName = "the Spirit of Exar Kun",
	socialGroup = "exar",
	faction = "",
	level = 300,
	chanceHit = 35,
	damageMin = 1520,
	damageMax = 2800,
	baseXp = 28149,
	baseHAM = 365000,
	baseHAMmax = 395000,
	armor = 3,
	resists = {180,180,170,165,200,200,200,170,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/exar_kun.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "g_lance_massassi", chance = 1500000},
				{group = "g_som_2h_sword_massassi", chance = 1500000},
				{group = "g_carbine_kun_massassi", chance = 1500000},
				{group = "g_two_handed_sword_sith", chance = 1000000},
				{group = "g_pistol_heroic_exar", chance = 1500000},
				{group = "g_rifle_massassi_ink", chance = 1000000},
				{group = "g_sith_house_loot_deed", chance = 1000000},
				{group = "g_sith_speeder", chance = 500000},
				{group = "g_rare_exar_kun_mural", chance = 250000},
				{group = "crystal_kuns_blood", chance = 250000}

			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_lance_massassi", chance = 1500000},
				{group = "g_som_2h_sword_massassi", chance = 1500000},
				{group = "g_carbine_kun_massassi", chance = 1500000},
				{group = "g_two_handed_sword_sith", chance = 1000000},
				{group = "g_pistol_heroic_exar", chance = 1500000},
				{group = "g_rifle_massassi_ink", chance = 1000000},
				{group = "g_sith_house_loot_deed", chance = 1000000},
				{group = "g_sith_speeder", chance = 500000},
				{group = "g_rare_exar_kun_mural", chance = 250000},
				{group = "crystal_kuns_blood", chance = 250000}

			},
			lootChance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun, "exar_kun")
