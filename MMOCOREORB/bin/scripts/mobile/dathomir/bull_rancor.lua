bull_rancor = Creature:new {
	objectName = "@mob/creature_names:bull_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 455,
	damageMax = 620,
	baseXp = 7288,
	baseHAM = 16250,
	baseHAMmax = 19250,
	armor = 1,
	resists = {160,160,160,180,180,180,165,155,-1},
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

	templates = {"object/mobile/beast_master/bm_mutated_rancor.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_rancor.iff",
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 3300000
		}
	},
	weapons = {},
	conversationTemplate = "",

	attacks = {
		{"creatureareadisease","stateAccuracyBonus=25"},
		{"dizzyattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(bull_rancor, "bull_rancor")
