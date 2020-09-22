silent_shade_spy = Creature:new {
	customName = "Silent Shade spy",
	socialGroup = "shade",
	faction = "",
	level = 80,
	chanceHit = 4,
	damageMin = 585,
	damageMax = 825,
	baseXp = 7407,
	baseHAM = 17000,
	baseHAMmax = 19700,
	armor = 1,
	resists = {155,160,140,35,150,150,140,35,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_npe_imperial_officer.iff",
		"object/mobile/coa_colonel_braedic_ekirk.iff",
		"object/mobile/commander_kenkirk.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3700000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 350000},
				{group = "g_carbine_underslung", chance = 1500000},
				{group = "canyon_corsair_common", chance = 3950000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,carbineermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(silent_shade_spy, "silent_shade_spy")
