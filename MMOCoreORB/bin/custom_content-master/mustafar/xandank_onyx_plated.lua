xandank_onyx_plated = Creature:new {
	objectName = "@monster_name:onyx_plated_xandank",
	socialGroup = "xandank",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 570,
	damageMax = 750,
	baseXp = 5900,
	baseHAM = 14500,
	baseHAMmax = 16750,
	armor = 1,
	resists = {160,155,180,200,150,160,155,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 150,
	hideType = "hide_scaley",
	hideAmount = 80,
	boneType = "bone_mammal",
	boneAmount = 170,
	milkType = "",
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/xandank_onyx_plated.iff"},
	hues = { 48, 56, 57, 58, 59, 60, 64, 80, 83 },
	controlDeviceTemplate = "object/intangible/pet/xandank.iff",
	lootGroups = {},
	scale = 1.15,
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=75"},
		{"intimidationattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(xandank_onyx_plated, "xandank_onyx_plated")
