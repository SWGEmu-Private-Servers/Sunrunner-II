ruffian = Creature:new {
	customName = "a ruffian",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "delinquent",
	faction = "",
	level = 65,
	chanceHit = 3,
	damageMin = 450,
	damageMax = 760,
	baseXp = 6207,
	baseHAM = 13500,
	baseHAMmax = 15750,
	armor = 1,
	resists = {160,155,145,150,150,140,145,145,-1},
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
		"object/mobile/dressed_mercenary_messanger_rod_m.iff",
		"object/mobile/dressed_mercenary_messanger_hum_m.iff",
		"object/mobile/dressed_mercenary_messanger_hum_f.iff",
		"object/mobile/dressed_criminal_assassin_human_female_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "armor_attachments", chance = 500000},
				{group = "clothing_attachments", chance = 500000},
				{group = "desert_demon_common", chance = 3000000},
				{group = "canyon_corsair_common", chance = 3000000}
			}
		}
	},
	weapons = {"rebel_weapons_medium"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,riflemanmaster,pistoleermaster,carbineermaster,marksmanmaster,tkamaster,bountyhuntermid)
}

CreatureTemplates:addCreatureTemplate(ruffian, "ruffian")
