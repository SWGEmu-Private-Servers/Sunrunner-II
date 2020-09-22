silent_shade_observer = Creature:new {
	customName = "Silent Shade observer",
	socialGroup = "shade",
	faction = "",
	level = 129,
	chanceHit = 10,
	damageMin = 800,
	damageMax = 1250,
	baseXp = 12235,
	baseHAM = 36000,
	baseHAMmax = 42500,
	armor = 2,
	resists = {165,160,160,180,165,170,170,150,-1},
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
		"object/mobile/dressed_officer_merc3.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3400000},
				{group = "armor_attachments", chance = 650000},
				{group = "clothing_attachments", chance = 550000},
				{group = "g_carbine_underslung", chance = 1500000},
				{group = "borvos_common", chance = 3900000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(silent_shade_observer, "silent_shade_observer")
