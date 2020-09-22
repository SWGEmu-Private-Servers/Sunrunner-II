walluga_stoneleg = Creature:new {
	customName = "Stoneleg",
	socialGroup = "walluga",
	faction = "",
	level = 65,
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
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/walluga.iff"},
	controlDeviceTemplate = "object/intangible/pet/walluga.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},	
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(walluga_stoneleg, "walluga_stoneleg")
