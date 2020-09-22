nandina = Creature:new {
	customName = "Nandina",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 230,
	chanceHit = 30.5,
	damageMin = 1350,
	damageMax = 2200,
	baseXp = 24411,
	baseHAM = 195000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {165,185,160,180,180,180,160,170,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_rancor_tamer.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 2000000},
				{group = "pistols", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "g_som_lance_obsidian", chance = 1000000},
				{group = "axkva_min", chance = 2600000},
				{group = "g_nightsister_bicep", chance = 950000},
				{group = "clothing_attachments", chance = 950000},
				{group = "g_som_sword_obsidian", chance = 500000}
			}
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(nandina, "nandina")
