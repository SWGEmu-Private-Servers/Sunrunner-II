uller = Creature:new {
	objectName = "@monster_name:uller",
	socialGroup = "uller",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 500,
	damageMax = 670,
	baseXp = 5900,
	baseHAM = 13000,
	baseHAMmax = 14500,
	armor = 1,
	resists = {160,150,170,145,40,155,145,145,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 276,
	boneType = "bone_mammal",
	boneAmount = 301,
	milkType = "",
	milk = 0,
	tamingChance = 0.1,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/uller.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/uller.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=25"},	
		{"intimidationattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(uller, "uller")
