tauntaun = Creature:new {
	objectName = "@mob/creature_names:tauntaun",
	socialGroup = "tauntaun",
	faction = "",
	level = 15,
	chanceHit = 0.29,
	damageMin = 120,
	damageMax = 130,
	baseXp = 356,
	baseHAM = 1000,
	baseHAMmax = 1200,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 215,
	hideType = "hide_bristley",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 115,
	milkType = "milk_wild",
	milk = 100,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/tauntaun_hue.iff"},
	hues = { 0, 4, 8, 12, 16, 20, 24, 28 },
	controlDeviceTemplate = "object/intangible/pet/tauntaun_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(tauntaun, "tauntaun")
