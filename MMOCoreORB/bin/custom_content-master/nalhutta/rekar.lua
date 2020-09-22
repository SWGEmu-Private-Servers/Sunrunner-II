rekar = Creature:new {
	customName = "Rekar (a veteran Bog Raider captain)",
	socialGroup = "bograider",
	faction = "",
	level = 200,
	chanceHit = 20.5,
	damageMin = 1800,
	damageMax = 2250,
	baseXp = 22411,
	baseHAM = 185000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {175,200,165,175,175,190,195,170,-1},
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
		"object/mobile/coa_lag_officer_hum_m.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6500000},
				{group = "g_rekar_necklace", chance = 1000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_sniper_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(rekar, "rekar")
