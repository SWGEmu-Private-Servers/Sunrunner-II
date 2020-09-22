grogilla = Creature:new {
	customName = "a grogilla",
	socialGroup = "grogilla",
	faction = "",
	level = 95,
	chanceHit = 6.5,
	damageMin = 630,
	damageMax = 970,
	baseXp = 9057,
	baseHAM = 27000,
	baseHAMmax = 34000,
	armor = 2,
	resists = {165,165,160,160,165,170,200,155,-1},
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
	scale = 1,
	lootGroups = {
	 {
	        groups = {
				{group = "g_grogilla_common", chance = 10000000},
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease","stateAccuracyBonus=25"},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(grogilla, "grogilla")
