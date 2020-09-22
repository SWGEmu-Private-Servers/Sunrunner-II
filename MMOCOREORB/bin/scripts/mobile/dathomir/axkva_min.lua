axkva_min = Creature:new {
	customName = "Axkva Min",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 302,
	chanceHit = 30,
	damageMin = 1645,
	damageMax = 3000,
	specialDamageMult = 7.5,
	baseXp = 28549,
	baseHAM = 420000,
	baseHAMmax = 490000,
	armor = 3,
	resists = {190,190,180,200,200,200,200,170,-1},
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

	templates = {"object/mobile/axkva_min_static.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 1500000},
				{group = "g_som_lance_obsidian", chance = 1500000},
				{group = "axkva_min", chance = 2600000},
				{group = "g_nightsister_bicep", chance = 1900000},
				{group = "g_som_sword_obsidian", chance = 1500000},
				{group = "g_axkva_motor", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_som_2h_sword_obsidian", chance = 1500000},
				{group = "g_som_lance_obsidian", chance = 1500000},
				{group = "axkva_min", chance = 2600000},
				{group = "g_nightsister_bicep", chance = 1900000},
				{group = "g_som_sword_obsidian", chance = 1500000},
				{group = "g_axkva_motor", chance = 1000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "g_axkva_motor", chance = 10000000}
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(axkva_min, "axkva_min")
