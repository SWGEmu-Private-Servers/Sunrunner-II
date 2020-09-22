bonecracker_bantha = Creature:new {
	objectName = "@mob/creature_names:bantha_bonecracker",
	socialGroup = "bantha",
	faction = "",
	level = 24,
	chanceHit = 1.25,
	damageMin = 250,
	damageMax = 260,
	baseXp = 5043,
	baseHAM = 7700,
	baseHAMmax = 9300,
	armor = 0,
	resists = {130,125,150,160,120,140,130,130,-1},
	meatType = "meat_herbivore",
	meatAmount = 950,
	hideType = "hide_wooly",
	hideAmount = 690,
	boneType = "bone_mammal",
	boneAmount = 600,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 2,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bantha_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/bantha_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=100"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(bonecracker_bantha, "bonecracker_bantha")