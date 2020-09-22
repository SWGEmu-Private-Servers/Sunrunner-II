feral_kashyyyk_bantha = Creature:new {
	objectName = "@mob/creature_names:feral_kashyyyk_bantha",
	socialGroup = "kashbantha",
	faction = "",
	level = 35,
	chanceHit = 1,
	damageMin = 290,
	damageMax = 350,
	baseXp = 5700,
	baseHAM = 7000,
	baseHAMmax = 8500,
	armor = 0,
	resists = {40,155,40,35,180,150,30,25,-1},
	meatType = "meat_herbivore",
	meatAmount = 380,
	hideType = "hide_wooly",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 350,
	milkType = "milk_wild",
	milk = 250,
	tamingChance = 0.09,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kashyyyk_bantha.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/kashyyyk_bantha.iff",
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"posturedownattack","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(feral_kashyyyk_bantha, "feral_kashyyyk_bantha")