gnarled_rancor = Creature:new {
	objectName = "@mob/creature_names:gnarled_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 400,
	damageMax = 525,
	baseXp = 4552,
	baseHAM = 11250,
	baseHAMmax = 12250,
	armor = 1,
	resists = {150,150,145,155,155,155,150,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 876,
	boneType = "bone_mammal",
	boneAmount = 775,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/rancor_hue.iff",
	scale = 0.9,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 3920000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(gnarled_rancor, "gnarled_rancor")
