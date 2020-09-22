blood_drenched_merek_king = Creature:new {
	objectName = "@mob/creature_names:blood_drenched_merek_king",
	socialGroup = "merek",
	faction = "",
	level = 55,
	chanceHit = 1.25,
	damageMin = 480,
	damageMax = 600,
	baseXp = 11464,
	baseHAM = 12500,
	baseHAMmax = 14500,
	armor = 1,
	resists = {150,165,150,140,170,150,180,150,-1},
	meatType = "meat_wild",
	meatAmount = 110,
	hideType = "hide_leathery",
	hideAmount = 110,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/blood_drenched_merek_king.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/merek_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=100"},
		{"blindattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(blood_drenched_merek_king, "blood_drenched_merek_king")