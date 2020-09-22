uller_impaler = Creature:new {
	objectName = "@mob/creature_names:uller_impaler",
	socialGroup = "uller",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 550,
	damageMax = 670,
	baseXp = 6900,
	baseHAM = 14000,
	baseHAMmax = 15500,
	armor = 1,
	resists = {160,155,170,150,145,160,150,145,-1},
	meatType = "meat_herbivore",
	meatAmount = 400,
	hideType = "hide_leathery",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 320,
	milkType = "",
	milk = 0,
	tamingChance = 0.07,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/uller.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 50, 51 },
	controlDeviceTemplate = "object/intangible/pet/uller.iff",
	scale = 1.5,	
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=25"},	
		{"creatureareableeding","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(uller_impaler, "uller_impaler")
