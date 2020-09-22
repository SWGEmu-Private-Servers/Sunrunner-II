silent_shade_assassin = Creature:new {
	customName = "Silent Shade assassin",
	socialGroup = "shade",
	faction = "",
	level = 110,
	chanceHit = 10.5,
	damageMin = 780,
	damageMax = 1025,
	baseXp = 10825,
	baseHAM = 24500,
	baseHAMmax = 28500,
	armor = 1,
	resists = {160,160,150,145,165,165,155,145,-1},
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
		"object/mobile/dressed_officer_merc2.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3600000},
				{group = "armor_attachments", chance = 550000},
				{group = "clothing_attachments", chance = 400000},
				{group = "g_carbine_underslung", chance = 1750000},
				{group = "hidden_dagger_common", chance = 3700000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(silent_shade_assassin, "silent_shade_assassin")
