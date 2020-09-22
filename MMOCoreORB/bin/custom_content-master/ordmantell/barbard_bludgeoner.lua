barbard_bludgeoner = Creature:new {
	objectName = "@mob/creature_names:barbard_bludgeoner",
	socialGroup = "barbard",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 585,
	baseXp = 6370,
	baseHAM = 11450,
	baseHAMmax = 13850,
	armor = 1,
	resists = {155,150,150,155,145,155,180,145,-1},
	meatType = "meat_reptilian",
	meatAmount = 25,
	hideType = "hide_leathery",
	hideAmount = 10,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_vesp.iff"},
	controlDeviceTemplate = "object/intangible/pet/beast_master/bm_mutated_vesp.iff",
	scale = 2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=15"},
		{"blindattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(barbard_bludgeoner, "barbard_bludgeoner")
