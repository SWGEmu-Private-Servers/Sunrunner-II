female_squall = Creature:new {
	objectName = "@mob/creature_names:squall_female",
	socialGroup = "squall",
	faction = "",
	level = 10,
	chanceHit = 0.28,
	damageMin = 90,
	damageMax = 110,
	baseXp = 356,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 8,
	hideType = "hide_bristley",
	hideAmount = 12,
	boneType = "bone_mammal",
	boneAmount = 8,
	milkType = "milk_wild",
	milk = 65,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/squall_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/squall_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(female_squall, "female_squall")
