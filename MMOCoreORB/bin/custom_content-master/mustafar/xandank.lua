xandank = Creature:new {
	objectName = "@monster_name:xandank",
	socialGroup = "xandank",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 550,
	damageMax = 620,
	baseXp = 5900,
	baseHAM = 12500,
	baseHAMmax = 14500,
	armor = 1,
	resists = {160,150,175,200,35,150,145,35,-1},
	meatType = "meat_carnivore",
	meatAmount = 75,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "bone_mammal",
	boneAmount = 85,
	milkType = "",
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/xandank.iff"},
	hues = { 0, 1, 2, 3, 4, 7, 8, 31, 39 },
	controlDeviceTemplate = "object/intangible/pet/xandank.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"intimidationattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(xandank, "xandank")
