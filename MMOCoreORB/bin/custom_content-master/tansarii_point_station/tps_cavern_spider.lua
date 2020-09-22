tps_cavern_spider = Creature:new {
	objectName = "@mob/creature_names:cave_gaping_spider",
	socialGroup = "spider_nightsister",
	faction = "",
	level = 8,
	chanceHit = 0.46,
	damageMin = 50,
	damageMax = 90,
	baseXp = 222,
	baseHAM = 300,
	baseHAMmax = 360,
	armor = 0,
	resists = {5,5,0,0,0,0,0,0,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {		
			{"stunattack",""}
		}
}

CreatureTemplates:addCreatureTemplate(tps_cavern_spider, "tps_cavern_spider")
