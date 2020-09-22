gamorrean_brute = Creature:new {
	customName = "a Gamorrean brute",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gamorrean",
	faction = "",
	level = 70,
	chanceHit = 7.5,
	damageMin = 720,
	damageMax = 890,
	baseXp = 5920,
	baseHAM = 15750,
	baseHAMmax = 18950,
	armor = 1,
	resists = {165,145,150,40,170,145,175,150,-1},
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
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "borvos_common", chance = 2000000},
				{group = "jabba_common", chance = 1250000},
				{group = "flail_common", chance = 1250000},
				{group = "marauder_armor", chance = 1000000}
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(gamorrean_brute, "gamorrean_brute")
