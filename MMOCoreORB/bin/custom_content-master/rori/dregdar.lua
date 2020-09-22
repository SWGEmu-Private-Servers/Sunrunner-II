dregdar = Creature:new {
	customName = "Sergeant Major Dregdar",
	socialGroup = "rebel",
	faction = "rebel",
	level = 200,
	chanceHit = 50,
	damageMin = 1375,
	damageMax = 1925,
	baseXp = 22411,
	baseHAM = 145000,
	baseHAMmax = 182500,
	armor = 2,
	resists = {155,165,170,200,175,175,160,165,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_npe_rebel_agent.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "armor_attachments", chance = 1750000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "g_sergeant_bracelet_r", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(dregdar, "dregdar")