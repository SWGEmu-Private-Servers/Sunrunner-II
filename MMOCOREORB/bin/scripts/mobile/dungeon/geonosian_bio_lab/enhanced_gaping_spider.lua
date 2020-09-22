enhanced_gaping_spider = Creature:new {
	objectName = "@mob/creature_names:geonosian_gaping_spider_fire",
	customName = "Fire Breathing Spider",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 187,
	chanceHit = 90.5,
	damageMin = 1215,
	damageMax = 1940,
	baseXp = 12267,
	baseHAM = 122000,
	baseHAMmax = 139000,
	armor = 2,
	resists = {150,10,-1,195,-1,10,10,10,-1},
	meatType = "meat_insect",
	meatAmount = 50,
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
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider.iff"},
	scale = 2.5,
	lootGroups = {
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000}
			},
			lootchance = 10000000
		},
		{
			groups = {
				{group = "fire_breathing_spider", chance = 10000000}
			},
			lootchance = 7500000
		},
	},
	weapons = {"creature_spit_heavy_flame"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enhanced_gaping_spider, "enhanced_gaping_spider")
