tulrus = Creature:new {
	objectName = "@monster_name:tulrus",
	socialGroup = "tulrus",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 530,
	damageMax = 610,
	baseXp = 5600,
	baseHAM = 14500,
	baseHAMmax = 16750,
	armor = 1,
	resists = {160,155,150,190,145,165,165,150,-1},
	meatType = "meat_reptilian",
	meatAmount = 185,
	hideType = "hide_scaley",
	hideAmount = 150,
	boneType = "bone_mammal",
	boneAmount = 175,
	milkType = "",
	milk = 0,
	tamingChance = 0.1,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tulrus.iff"},
	hues = { 0, 1, 2, 3, 24, 29, 32, 48 },
	controlDeviceTemplate = "object/intangible/pet/tulrus.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=25"},
		{"posturedownattack","stateAccuracyBonus=25"}
	}

}

CreatureTemplates:addCreatureTemplate(tulrus, "tulrus")
