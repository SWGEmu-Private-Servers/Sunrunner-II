grenord = Creature:new {
	customName = "Grenord (a treasure hunting ruffian)",
	socialGroup = "oldrepublic",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1975,
	damageMax = 2425,
	baseXp = 24549,
	baseHAM = 185000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {170,170,165,190,165,170,170,160,-1},
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

	templates = {"object/mobile/som/ruins_leader.iff"},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 3000000},
				{group = "g_orf_treasure_hunter", chance = 1500000},
				{group = "g_som_disruptor_pistol", chance = 1000000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 2250000},
				{group = "g_som_carbine_republic_sfor", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,marksmanmaster,tkamaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(grenord, "grenord")