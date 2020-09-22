barbard = Creature:new {
	objectName = "@mob/creature_names:barbard",
	socialGroup = "barbard",
	faction = "",
	level = 45,
	chanceHit = 1,
	damageMin = 380,
	damageMax = 450,
	baseXp = 4370,
	baseHAM = 9300,
	baseHAMmax = 12000,
	armor = 1,
	resists = {150,150,30,155,40,150,170,25,-1},
	meatType = "meat_reptilian",
	meatAmount = 25,
	hideType = "hide_leathery",
	hideAmount = 10,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_vesp.iff"},
	controlDeviceTemplate = "object/intangible/pet/beast_master/bm_mutated_vesp.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(barbard, "barbard")

