envartin = Creature:new {
	customName = "Envartin (a marauding vandal)",
	socialGroup = "hooligan",
	faction = "",
	level = 95,
	chanceHit = 10.5,
	damageMin = 750,
	damageMax = 1150,
	baseXp = 8807,
	baseHAM = 42500,
	baseHAMmax = 48750,
	armor = 2,
	resists = {165,165,155,155,150,170,150,150,-1},
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
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "canyon_corsair_common", chance = 2250000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,pistoleermaster,marksmanmaster,tkamaster,swordsmanmaster,fencermaster,bountyhuntermid)
}

CreatureTemplates:addCreatureTemplate(envartin, "envartin")