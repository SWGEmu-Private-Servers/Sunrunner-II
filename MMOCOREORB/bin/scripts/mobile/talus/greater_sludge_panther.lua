greater_sludge_panther = Creature:new {
	objectName = "@mob/creature_names:greater_sludge_panther",
	socialGroup = "panther",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 350,
	damageMax = 620,
	baseXp = 6250,
	baseHAM = 13450,
	baseHAMmax = 17450,
	armor = 1,
	resists = {165,160,150,160,150,155,170,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 80,
	hideType = "hide_leathery",
	hideAmount = 70,
	boneType = "bone_mammal",
	boneAmount = 70,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 7,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/greater_sludge_panther.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/corellian_sand_panther_hue.iff",
	scale = 2.0,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(greater_sludge_panther, "greater_sludge_panther")
