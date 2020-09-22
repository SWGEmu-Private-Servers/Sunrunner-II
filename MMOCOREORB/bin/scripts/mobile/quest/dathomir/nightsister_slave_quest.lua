nightsister_slave_quest = Creature:new {
	objectName = "@mob/creature_names:nightsister_slave",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 115,
	chanceHit = 25.5,
	damageMin = 1170,
	damageMax = 1750,
	baseXp = 17614,
	baseHAM = 41500,
	baseHAMmax = 46700,
	armor = 2,
	resists = {150,150,40,40,35,160,150,45,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_nightsister_slave.iff"},
	lootGroups = {
        		{
			groups = {
				{group = "theme_park_loot_heart_of_slave_ns_geth", chance = 10000000}
			},
		lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(tkamaster,brawlermaster,rend)
}

CreatureTemplates:addCreatureTemplate(nightsister_slave_quest, "nightsister_slave_quest")