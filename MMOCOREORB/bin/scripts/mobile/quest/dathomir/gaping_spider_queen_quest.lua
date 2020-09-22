gaping_spider_queen_quest = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_queen",
	socialGroup = "spider",
	faction = "",
	level = 125,
	chanceHit = 20.5,
	damageMin = 900,
	damageMax = 1100,
	baseXp = 19043,
	baseHAM = 34700,
	baseHAMmax = 42500,
	armor = 2,
	resists = {165,165,150,30,40,35,180,35,-1},
	meatType = "meat_insect",
	meatAmount = 200,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 9,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_queen.iff"},
	scale = 1.8,
	lootGroups = {
        		{
			groups = {
				{group = "theme_park_loot_gaping_spider_poison_sacs_ns_kais", chance = 10000000}
			},
		lootChance = 10000000
		}
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=75"},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(gaping_spider_queen_quest, "gaping_spider_queen_quest")