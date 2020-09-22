malicious_hunter = Creature:new {
	customName = "a malicious treasure hunter",
	socialGroup = "oldrepublic",
	faction = "",
	level = 100,
	chanceHit = 5,
	damageMin = 750,
	damageMax = 975,
	baseXp = 10549,
	baseHAM = 19500,
	baseHAMmax = 22500,
	armor = 1,
	resists = {165,160,150,175,150,155,160,150,-1},
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

	templates = {
		"object/mobile/som/blackguard.iff",
		"object/mobile/som/col_narl.iff",
		"object/mobile/som/lislot_bloodscar.iff",
		"object/mobile/som/must_salvage_bandit_01.iff",
		"object/mobile/som/ruins_weequay.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "g_orf_treasure_hunter", chance = 3000000},
				{group = "weequay_common", chance = 1500000},
				{group = "beldonnas_common", chance = 1000000},
				{group = "jabba_common", chance = 2250000},
				{group = "canyon_corsair_common", chance = 2250000}
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,marksmanmaster,pistoleermaster,tkamaster,fencermaster,swordsmanmaster,bountyhuntermid)
}

CreatureTemplates:addCreatureTemplate(malicious_hunter, "malicious_hunter")
