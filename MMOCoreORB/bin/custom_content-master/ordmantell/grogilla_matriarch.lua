grogilla_matriarch = Creature:new {
	objectName = "@mob/creature_names:grogilla_matriarch",
	socialGroup = "grogilla",
	faction = "",
	level = 153,
	chanceHit = 10,
	damageMin = 895,
	damageMax = 1550,
	baseXp = 14504,
	baseHAM = 85000,
	baseHAMmax = 110000,
	armor = 2,
	resists = {165,175,160,170,175,160,200,155,-1},
	meatType = "meat_reptilian",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
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
	scale = 2,
	lootGroups = {
	 {
	        groups = {
				{group = "g_grogilla_common", chance = 10000000},
			},
			lootChance = 6000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(grogilla_matriarch, "grogilla_matriarch")
