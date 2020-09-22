enraged_bolotaur = Creature:new {
	objectName = "@mob/creature_names:enraged_bolotaur",
	socialGroup = "bolotaur",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 525,
	baseXp = 7200,
	baseHAM = 9100,
	baseHAMmax = 11100,
	armor = 1,
	resists = {150,150,40,160,40,150,40,40,-1},
	meatType = "meat_herbivore",
	meatAmount = 250,
	hideType = "hide_bristley",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 90,
	milkType = "",
	milk = 0,
	tamingChance = 0.09,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bolotaur.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 50, 51 },
	controlDeviceTemplate = "object/intangible/pet/bolotaur.iff",
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=50"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_bolotaur, "enraged_bolotaur")