young_grogilla = Creature:new {
	objectName = "@mob/creature_names:young_grogilla",
	socialGroup = "grogilla",
	faction = "",
	level = 45,
	chanceHit = 6.5,
	damageMin = 430,
	damageMax = 670,
	baseXp = 4524,
	baseHAM = 9300,
	baseHAMmax = 12500,
	armor = 1,
	resists = {145,150,40,145,40,145,160,35,-1},
	meatType = "meat_reptilian",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 500,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_kimogila.iff"},
	scale = 0.6,
	lootGroups = {
	 {
	        groups = {
				{group = "g_grogilla_common", chance = 10000000},
			},
			lootChance = 3000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(young_grogilla, "young_grogilla")
