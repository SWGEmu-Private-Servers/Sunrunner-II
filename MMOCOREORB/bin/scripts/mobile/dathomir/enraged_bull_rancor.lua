enraged_bull_rancor = Creature:new {
	objectName = "@mob/creature_names:enraged_bull_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 89,
	chanceHit = 1.5,
	damageMin = 650,
	damageMax = 900,
	baseXp = 8500,
	baseHAM = 16000,
	baseHAMmax = 20000,
	armor = 1,
	resists = {170,170,155,200,200,200,145,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 880,
	hideType = "hide_leathery",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 670,
	milk = 0,
	tamingChance = 0,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_rancor.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_all", chance = 1500000}
			},
			lootChance = 4780000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding",""},
		{"creatureareaknockdown",""}
	}
}

CreatureTemplates:addCreatureTemplate(enraged_bull_rancor, "enraged_bull_rancor")
