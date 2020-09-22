brute_hunter = Creature:new {
	customName = "a treasure hunting brute",
	socialGroup = "oldrepublic",
	faction = "",
	level = 100,
	chanceHit = 25,
	damageMin = 1075,
	damageMax = 1450,
	baseXp = 10549,
	baseHAM = 42500,
	baseHAMmax = 48500,
	armor = 2,
	resists = {170,165,160,185,155,165,170,155,-1},
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
	diet = HERBIVORE,

	templates = {"object/mobile/som/coyn_shock.iff"},

	lootGroups = {
		{
			groups = {
				{group = "g_orf_treasure_hunter", chance = 3000000},
				{group = "weequay_common", chance = 1500000},
				{group = "beldonnas_common", chance = 1000000},
				{group = "dim_u_common", chance = 2250000},
				{group = "valarian_common", chance = 2250000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,marksmanmaster,pistoleermaster,tkamaster,fencermaster,swordsmanmaster,bountyhuntermid)
}

CreatureTemplates:addCreatureTemplate(brute_hunter, "brute_hunter")
