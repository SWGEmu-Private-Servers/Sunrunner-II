arachne_queen = Creature:new {
	objectName = "@mob/creature_names:queen_arachne",
	socialGroup = "arachne",
	faction = "",
	level = 63,
	chanceHit = 1.5,
	damageMin = 445,
	damageMax = 600,
	baseXp = 6105,
	baseHAM = 12500,
	baseHAMmax = 15500,
	armor = 1,
	resists = {150,165,145,180,180,145,180,150,-1},
	meatType = "meat_insect",
	meatAmount = 120,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/queen_arachne.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/angler_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"strongpoison","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(arachne_queen, "arachne_queen")