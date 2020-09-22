horned_raptor = Creature:new {
	objectName = "@mob/creature_names:horned_raptor",
	socialGroup = "horned_raptor",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 400,
	damageMax = 500,
	baseXp = 4916,
	baseHAM = 9800,
	baseHAMmax = 11800,
	armor = 1,
	resists = {150,150,140,140,140,150,155,25,-1},
	meatType = "meat_carnivore",
	meatAmount = 70,
	hideType = "hide_leathery",
	hideAmount = 60,
	boneType = "bone_avian",
	boneAmount = 60,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_griffon.iff"},
	hues = { 2, 3, 5, 7, 8, 9, 10 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_griffon.iff",
	scale = 1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(horned_raptor, "horned_raptor")
