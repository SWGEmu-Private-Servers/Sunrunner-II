vandal = Creature:new {
	customName = "a vandal",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "hooligan",
	faction = "",
	level = 65,
	chanceHit = 3,
	damageMin = 450,
	damageMax = 760,
	baseXp = 6207,
	baseHAM = 13500,
	baseHAMmax = 15750,
	armor = 1,
	resists = {155,160,150,145,140,150,140,145,-1},
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
		"object/mobile/dressed_criminal_assassin_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_01.iff",
		"object/mobile/dressed_criminal_thug_human_male_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "borvos_common", chance = 3000000},
				{group = "canyon_corsair_common", chance = 3000000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,pistoleermaster,marksmanmaster,tkamaster,swordsmanmaster,fencermaster,bountyhuntermid)
}

CreatureTemplates:addCreatureTemplate(vandal, "vandal")
