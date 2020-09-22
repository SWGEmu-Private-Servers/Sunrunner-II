ryson = Creature:new {
	customName = "Ryson (Bog Raider's leader)",
	socialGroup = "bograider",
	faction = "",
	level = 280,
	chanceHit = 30.5,
	damageMin = 1350,
	damageMax = 1950,
	baseXp = 26411,
	baseHAM = 315000,
	baseHAMmax = 375000,
	armor = 3,
	resists = {190,180,170,200,180,195,200,200,-1},
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
	scale = 1.2,

	templates = {
		"object/mobile/dressed_bh_male_human_04.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 5000000},
				{group = "g_swamp_speeder", chance = 1500000},
				{group = "g_ryson_ring", chance = 1500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"mordran_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(ryson, "ryson")