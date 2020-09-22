rancor = Creature:new {
	objectName = "@mob/creature_names:rancor",
	socialGroup = "rancor",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 550,
	baseXp = 4916,
	baseHAM = 12750,
	baseHAMmax = 14750,
	armor = 1,
	resists = {150,155,150,165,165,165,155,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 877,
	boneType = "bone_mammal",
	boneAmount = 777,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/rancor_hue.iff",
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 3000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=50"},
		{"intimidationattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(rancor, "rancor")
