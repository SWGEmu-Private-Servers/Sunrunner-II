minor_grogilla = Creature:new {
	objectName = "@mob/creature_names:minor_grogilla",
	socialGroup = "grogilla",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 530,
	damageMax = 770,
	baseXp = 7057,
	baseHAM = 16500,
	baseHAMmax = 20500,
	armor = 1,
	resists = {160,160,160,165,165,170,200,155,-1},
	meatType = "meat_reptilian",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_kimogila.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_kimogila.iff",
	scale = 0.9,
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
		{"creatureareadisease","stateAccuracyBonus=35"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(minor_grogilla, "minor_grogilla")