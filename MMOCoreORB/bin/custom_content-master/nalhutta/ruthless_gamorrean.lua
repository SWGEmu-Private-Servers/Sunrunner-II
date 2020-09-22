ruthless_gamorrean = Creature:new {
	customName = "a ruthless Gamorrean",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gamorrean",
	faction = "",
	level = 80,
	chanceHit = 10,
	damageMin = 780,
	damageMax = 970,
	baseXp = 6720,
	baseHAM = 17750,
	baseHAMmax = 20950,
	armor = 1,
	resists = {170,155,150,145,180,150,175,150,-1},
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

	templates = {"object/mobile/gamorrean.iff"},
	scale = 1.15,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "jabba_common", chance = 1500000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "borvos_common", chance = 2250000},
				{group = "g_huttbunker_key", chance = 250000}
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(ruthless_gamorrean, "ruthless_gamorrean")
