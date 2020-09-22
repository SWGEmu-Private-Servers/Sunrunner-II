gamorrean_mercenary = Creature:new {
	customName = "a Gamorrean mercenary",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gamorrean",
	faction = "",
	level = 60,
	chanceHit = 7.5,
	damageMin = 650,
	damageMax = 770,
	baseXp = 5120,
	baseHAM = 13250,
	baseHAMmax = 16250,
	armor = 1,
	resists = {165,145,145,40,170,40,170,150,-1},
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
	scale = 1.05,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "flail_common", chance = 1250000},
				{group = "marauder_armor", chance = 1000000}
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(gamorrean_mercenary, "gamorrean_mercenary")
