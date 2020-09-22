giant_grogilla = Creature:new {
	objectName = "@mob/creature_names:giant_grogilla",
	socialGroup = "grogilla",
	faction = "",
	level = 139,
	chanceHit = 7.5,
	damageMin = 875,
	damageMax = 1460,
	baseXp = 13178,
	baseHAM = 65000,
	baseHAMmax = 82000,
	armor = 2,
	resists = {160,170,155,165,170,155,185,150,-1},
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
	scale = 1.3,
	lootGroups = {
	 {
	        groups = {
				{group = "g_grogilla_common", chance = 10000000},
			},
			lootChance = 5000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongdisease",""},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(giant_grogilla, "giant_grogilla")
