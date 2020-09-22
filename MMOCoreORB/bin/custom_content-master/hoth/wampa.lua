wampa = Creature:new {
	objectName = "@mob/creature_names:wampa",
	socialGroup = "wampa",
	faction = "",
	level = 65,
	chanceHit = 1.5,
	damageMin = 455,
	damageMax = 620,
	specialDamageMult = 3,
	baseXp = 6288,
	baseHAM = 14500,
	baseHAMmax = 17700,
	armor = 1,
	resists = {165,160,150,145,200,160,165,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 11,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wampa.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/beast/bm_wampa.iff",
	scale = 0.65,
	lootGroups = {
		{
			groups = {
				{group = "wampa_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 2000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(wampa, "wampa")
