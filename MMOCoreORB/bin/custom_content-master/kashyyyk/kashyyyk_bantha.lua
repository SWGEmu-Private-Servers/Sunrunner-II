kashyyyk_bantha = Creature:new {
	objectName = "@monster_name:kashyyyk_bantha",
	socialGroup = "kashbantha",
	faction = "",
	level = 18,
	chanceHit = 1,
	damageMin = 180,
	damageMax = 220,
	baseXp = 1500,
	baseHAM = 4000,
	baseHAMmax = 4500,
	armor = 0,
	resists = {125,5,140,5,-1,-1,-1,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_wooly",
	hideAmount = 276,
	boneType = "bone_mammal",
	boneAmount = 301,
	milkType = "milk_wild",
	milk = 160,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/kashyyyk_bantha.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/kashyyyk_bantha.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kashyyyk_bantha, "kashyyyk_bantha")
