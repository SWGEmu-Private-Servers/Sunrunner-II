vantrid = Creature:new {
	customName = "Vantrid (a marauding demolitionist)",
	socialGroup = "gasplant",
	faction = "",
	level = 310,
	chanceHit = 45,
	damageMin = 1970,
	damageMax = 2450,
	baseXp = 15820,
	baseHAM = 232950,
	baseHAMmax = 287750,
	armor = 2,
	resists = {165,200,170,185,170,165,190,160,-1},
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
		"object/mobile/dressed_tatooine_valarian_compound_guard.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "g_rifle_tc22_blaster", chance = 1000000},
				{group = "g_rifle_deathtroopers", chance = 1000000},
				{group = "g_rifle_westar_m5", chance = 1000000},
				{group = "green_light_gem", chance = 3750000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"demolitionist_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster,marksmanmaster,tkamaster,commandomaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(vantrid, "vantrid")