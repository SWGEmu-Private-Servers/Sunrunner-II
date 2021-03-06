walluga = Creature:new {
	objectName = "@monster_name:walluga",
	socialGroup = "walluga",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 500,
	damageMax = 650,
	baseXp = 6500,
	baseHAM = 13000,
	baseHAMmax = 14500,
	armor = 1,
	resists = {160,150,140,20,20,180,180,140,-1},
	meatType = "meat_insect",
	meatAmount = 25,
	hideType = "hide_scaley",
	hideAmount = 14,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.09,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/walluga.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/walluga.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},	
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(walluga, "walluga")
