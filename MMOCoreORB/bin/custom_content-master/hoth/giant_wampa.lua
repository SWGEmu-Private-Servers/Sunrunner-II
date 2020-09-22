giant_wampa = Creature:new {
	objectName = "@mob/creature_names:giant_wampa",
	socialGroup = "wampa",
	faction = "",
	level = 157,
	chanceHit = 90.5,
	damageMin = 1995,
	damageMax = 2600,
	baseXp = 14504,
	baseHAM = 221000,
	baseHAMmax = 264000,
	armor = 2,
	resists = {165,180,165,100,185,185,200,165,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wampa.iff"},
	scale = 2,
	lootGroups = {
		{
			groups = {
				{group = "wampa", chance = 9900000},
				{group = "g_wampa_skin_rug", chance = 100000},
			},
			lootChance = 8700000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_wampa, "giant_wampa")
