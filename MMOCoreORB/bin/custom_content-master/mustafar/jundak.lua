jundak = Creature:new {
	objectName = "@monster_name:jundak",
	socialGroup = "jundak",
	faction = "",
	level = 48,
	chanceHit = 1,
	damageMin = 500,
	damageMax = 650,
	baseXp = 5100,
	baseHAM = 10750,
	baseHAMmax = 12750,
	armor = 1,
	resists = {150,150,145,190,40,145,160,30,-1},
	meatType = "meat_reptilian",
	meatAmount = 255,
	hideType = "hide_scaley",
	hideAmount = 140,
	boneType = "bone_mammal",
	boneAmount = 60,
	milkType = "",
	milk = 0,
	tamingChance = 0.15,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/jundak.iff"},
	hues = { 0, 1, 2, 8, 9, 19, 20, 21 },
	controlDeviceTemplate = "object/intangible/pet/jundak.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(jundak, "jundak")
