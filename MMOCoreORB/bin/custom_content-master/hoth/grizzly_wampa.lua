grizzly_wampa = Creature:new {
	objectName = "@mob/creature_names:grizzly_wampa",
	socialGroup = "wampa",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 525,
	damageMax = 700,
	specialDamageMult = 3.5,
	baseXp = 7088,
	baseHAM = 15300,
	baseHAMmax = 18500,
	armor = 1,
	resists = {165,160,155,150,200,165,165,165,-1},
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

	templates = {"object/mobile/beast_master/bm_wampa.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_wampa.iff",
	scale = 0.70,
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
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"knockdownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(grizzly_wampa, "grizzly_wampa")
