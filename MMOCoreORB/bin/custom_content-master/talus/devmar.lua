devmar = Creature:new {
	customName = "Devmar (Silent Shade's executioner)",
	socialGroup = "shade",
	faction = "",
	level = 173,
	chanceHit = 15.5,
	damageMin = 825,
	damageMax = 1250,
	baseXp = 16411,
	baseHAM = 125000,
	baseHAMmax = 145000,
	armor = 2,
	resists = {170,170,160,160,170,180,160,155,-1},
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
		"object/mobile/galactic_marine_hum_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4000000},
				{group = "g_devmar_necklace", chance = 1250000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_carbine_underslung", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(devmar, "devmar")