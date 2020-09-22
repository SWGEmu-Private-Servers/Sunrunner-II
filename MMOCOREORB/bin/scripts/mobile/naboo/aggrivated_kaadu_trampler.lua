aggrivated_kaadu_trampler = Creature:new {
	objectName = "@mob/creature_names:kaadu_aggrivated_trampler",
	socialGroup = "kaadu",
	faction = "",
	level = 15,
	chanceHit = 1.25,
	damageMin = 170,
	damageMax = 190,
	baseXp = 2204,
	baseHAM = 3400,
	baseHAMmax = 3900,
	armor = 0,
	resists = {140,135,135,125,125,165,135,125,-1},
	meatType = "meat_avian",
	meatAmount = 240,
	hideType = "hide_leathery",
	hideAmount = 170,
	boneType = "bone_avian",
	boneAmount = 140,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kaadu_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/kaadu_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(aggrivated_kaadu_trampler, "aggrivated_kaadu_trampler")