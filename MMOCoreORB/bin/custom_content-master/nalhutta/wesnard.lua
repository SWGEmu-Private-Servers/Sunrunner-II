wesnard = Creature:new {
	customName = "Wesnard (a veteran Bog Raider exterminator)",
	socialGroup = "bograider",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1800,
	damageMax = 2250,
	baseXp = 22411,
	baseHAM = 185000,
	baseHAMmax = 225000,
	armor = 2,
	resists = {175,200,165,200,175,190,200,170,-1},
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
		"object/mobile/coa_lag_officer_hum_m2.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6000000},
				{group = "g_wesnard_ring", chance = 1250000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,commandomaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(wesnard, "wesnard")