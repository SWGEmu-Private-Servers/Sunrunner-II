enraged_reptilian_flier = Creature:new {
	objectName = "@mob/creature_names:enraged_reptilian_flier",
	socialGroup = "reptilian_flier",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 340,
	damageMax = 425,
	baseXp = 3915,
	baseHAM = 9100,
	baseHAMmax = 11700,
	armor = 1,
	resists = {150,160,140,150,150,145,170,150,-1},
	meatType = "meat_avian",
	meatAmount = 135,
	hideType = "hide_leathery",
	hideAmount = 90,
	boneType = "bone_avian",
	boneAmount = 85,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 7,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/som/orf_reptilian_flier.iff"},
	controlDeviceTemplate = "object/intangible/pet/reptilian_flier_hue.iff",
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=50"},
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_reptilian_flier, "enraged_reptilian_flier")
