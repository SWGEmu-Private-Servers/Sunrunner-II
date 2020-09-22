kiin_dray = Creature:new {
	objectName = "@mob/creature_names:gaping_spider_recluse_giant_kiin_dray",
	socialGroup = "spider_nightsister",
	faction = "spider_nightsister",
	level = 226,
	chanceHit = 24.75,
	damageMin = 1830,
	damageMax = 2170,
	baseXp = 15953,
	baseHAM = 241000,
	baseHAMmax = 275000,
	armor = 3,
	resists = {155,155,135,130,130,130,15,130,-1},
	meatType = "meat_insect",
	meatAmount = 11,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gaping_spider_recluse_giant_kiin_dray.iff"},
	scale = 4.0,
	lootGroups = {
		{
			groups = {
				{group = "fire_breathing_spider", chance = 2000000},
				{group = "nightsister_common", chance = 3900000},
				{group = "g_ns_clothes", chance = 2000000},
				{group = "melee_weapons", chance = 2000000},
				{group = "g_axkva_key", chance = 100000},
			}
		}
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(kiin_dray, "kiin_dray")
