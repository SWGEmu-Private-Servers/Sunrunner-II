malkloc_quest = Creature:new {
	objectName = "@mob/creature_names:malkloc",
	socialGroup = "malkloc",
	faction = "",
	level = 150,
	chanceHit = 20.5,
	damageMin = 1450,
	damageMax = 1970,
	baseXp = 17006,
	baseHAM = 44000,
	baseHAMmax = 48500,
	armor = 2,
	resists = {175,150,155,45,150,170,150,-1},
	meatType = "meat_herbivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/malkloc.iff"},
	scale = 1.3,
	lootGroups = {
        		{
			groups = {
				{group = "theme_park_loot_malkloc_heart_ns_kais", chance = 10000000}
			},
		lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(malkloc_quest, "malkloc_quest")