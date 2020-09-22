nerf_domesticated = Creature:new {
	objectName = "@mob/creature_names:nerf_domesticated",
	socialGroup = "nerf",
	faction = "",
	level = 29,
	chanceHit = 0.39,
	damageMin = 260,
	damageMax = 270,
	baseXp = 2914,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {135,20,-1,20,20,-1,20,-1,-1},
	meatType = "meat_domesticated",
	meatAmount = 85,
	hideType = "hide_leathery",
	hideAmount = 75,
	boneType = "bone_mammal",
	boneAmount = 85,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/nerf_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 46, 48, 49, 50, 51  },
	controlDeviceTemplate = "object/intangible/pet/nerf_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	attacks = {
		
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(nerf_domesticated, "nerf_domesticated")
