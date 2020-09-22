grizzly_mouf = Creature:new {
	objectName = "@mob/creature_names:grizzly_mouf",
	socialGroup = "mouf",
	faction = "",
	level = 35,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 410,
	baseXp = 5000,
	baseHAM = 8500,
	baseHAMmax = 9800,
	armor = 0,
	resists = {140,35,30,20,180,30,30,-1,-1},
	meatType = "meat_wild",
	meatAmount = 400,
	hideType = "hide_wooly",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 300,
	milkType = "milk_wild",
	milk = 130,
	tamingChance = 0.09,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/mouf.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/mouf.iff",
	scale = 1.3,	
	lootGroups = {},
	weapons = {},
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},	
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(grizzly_mouf, "grizzly_mouf")
