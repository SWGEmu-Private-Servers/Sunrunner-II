enraged_rancor = Creature:new {
	objectName = "@mob/creature_names:enraged_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 80,
	chanceHit = 1.5,
	damageMin = 600,
	damageMax = 850,
	baseXp = 7668,
	baseHAM = 15500,
	baseHAMmax = 19500,
	armor = 1,
	resists = {160,165,150,200,200,200,140,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 878,
	boneType = "bone_mammal",
	boneAmount = 778,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/rancor_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 1.15,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 3600000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_rancor, "enraged_rancor")
