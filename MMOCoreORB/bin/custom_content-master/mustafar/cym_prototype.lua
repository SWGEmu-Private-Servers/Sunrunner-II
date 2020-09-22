cym_prototype = Creature:new {
	customName = "CY-M Prototype",
	socialGroup = "hk47",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1650,
	damageMax = 2250,
	baseXp = 24549,
	baseHAM = 275000,
	baseHAMmax = 315000,
	armor = 2,
	resists = {180,170,160,155,170,160,200,165,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/volcano_cyborg_lt.iff"},
	scale = 1.15,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 2000000},
				{group = "g_som_ion_relic_pistol", chance = 1000000},
				{group = "g_som_2h_sword_tulrus", chance = 1000000},
				{group = "g_som_sword_mustafar_bandit", chance = 2000000},
				{group = "wearables_rare", chance = 4000000},
			},
			lootChance = 9000000
		}
},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(fencermaster,swordsmanmaster,tkamaster,pikemanmaster,brawlermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(cym_prototype, "cym_prototype")

