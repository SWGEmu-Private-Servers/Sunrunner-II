mouf = Creature:new {
	objectName = "@monster_name:mouf",
	socialGroup = "mouf",
	faction = "",
	level = 30,
	chanceHit = 1,
	damageMin = 250,
	damageMax = 300,
	baseXp = 3000,
	baseHAM = 7500,
	baseHAMmax = 7900,
	armor = 0,
	resists = {130,130,-1,-1,160,20,20,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_wooly",
	hideAmount = 276,
	boneType = "bone_mammal",
	boneAmount = 301,
	milkType = "milk_wild",
	milk = 130,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/mouf.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/mouf.iff",
	lootGroups = {},
	weapons = {},
	attacks = {
		{"stunattack",""},	
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mouf, "mouf")

