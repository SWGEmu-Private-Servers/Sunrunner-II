silent_shade_infiltrator = Creature:new {
	customName = "Silent Shade infiltrator",
	socialGroup = "shade",
	faction = "",
	level = 92,
	chanceHit = 6,
	damageMin = 630,
	damageMax = 925,
	baseXp = 8615,
	baseHAM = 19250,
	baseHAMmax = 22500,
	armor = 1,
	resists = {160,160,145,140,155,155,140,35,-1},
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
		"object/mobile/chief_olum.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3600000},
				{group = "armor_attachments", chance = 550000},
				{group = "clothing_attachments", chance = 450000},
				{group = "g_carbine_underslung", chance = 1500000},
				{group = "bloodrazor_common", chance = 3900000}
			}
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,marksmanmaster,carbineermaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(silent_shade_infiltrator, "silent_shade_infiltrator")
