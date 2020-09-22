delinquent = Creature:new {
	customName = "a delinquent",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "delinquent",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 410,
	damageMax = 710,
	baseXp = 5807,
	baseHAM = 10500,
	baseHAMmax = 13500,
	armor = 1,
	resists = {155,150,35,145,140,30,145,30,-1},
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
		"object/mobile/dressed_criminal_thug_rodian_female_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_male_01.iff",
		"object/mobile/dressed_criminal_thug_trandoshan_female_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_male_01.iff",
		"object/mobile/dressed_criminal_thug_zabrak_female_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3100000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 400000},
				{group = "desert_demon_common", chance = 3000000},
				{group = "canyon_corsair_common", chance = 3000000}
			}
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,carbineermaster,marksmanmaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(delinquent, "delinquent")
