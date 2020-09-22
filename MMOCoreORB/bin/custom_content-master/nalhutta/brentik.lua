brentik = Creature:new {
	customName = "Brentik (a merciless bruiser)",
	socialGroup = "gasplant",
	faction = "",
	level = 200,
	chanceHit = 40,
	damageMin = 1870,
	damageMax = 2350,
	baseXp = 13820,
	baseHAM = 182950,
	baseHAMmax = 217750,
	armor = 2,
	resists = {175,170,165,165,160,160,185,160,-1},
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
		"object/mobile/dressed_dalla_solo.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "g_lance_shock", chance = 1000000},
				{group = "g_gas_plant_junk", chance = 2500000},
				{group = "green_light_gem", chance = 4250000},
				{group = "clothing_attachments", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"brenarka_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(brentik, "brentik")