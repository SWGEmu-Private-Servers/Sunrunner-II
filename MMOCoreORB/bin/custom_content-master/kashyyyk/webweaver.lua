webweaver = Creature:new {
	objectName = "@monster_name:webweaver",
	socialGroup = "webweaver",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 400,
	damageMax = 550,
	baseXp = 5500,
	baseHAM = 10500,
	baseHAMmax = 12500,
	armor = 1,
	resists = {140,150,20,-1,170,170,180,30,-1},
	meatType = "meat_insect",
	meatAmount = 25,
	hideType = "hide_scaley",
	hideAmount = 14,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/webweaver.iff"},
	controlDeviceTemplate = "object/intangible/pet/webweaver.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},	
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(webweaver, "webweaver")
