ozvenark = Creature:new {
	customName = "Ozvenark (the brute of Disinous City)",
	socialGroup = "hooligan",
	faction = "",
	level = 220,
	chanceHit = 30.5,
	damageMin = 1975,
	damageMax = 2470,
	baseXp = 15723,
	baseHAM = 215000,
	baseHAMmax = 245000,
	armor = 2,
	resists = {180,175,165,155,150,155,165,160,-1},
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/bounty_check_fugitive_4.iff"
		},
	scale = 1.075,
	lootGroups = {
		{
			groups = {
				{group = "g_axkva_key", chance = 2000000},
				{group = "g_ig_key", chance = 2000000},
				{group = "g_avatar_key", chance = 2000000},
				{group = "g_huttbunker_key", chance = 2000000},				
				{group = "g_sherkar_key", chance = 2000000}
			},
			lootChance = 10000000
		},
		{
		groups = {
				
			{group = "armor_attachments", chance =  2500000},
			{group = "clothing_attachments", chance =  2500000},
			{group = "green_light_gem", chance =  5000000}
				},
			lootChance = 10000000
		}
		
	},

	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(ozvenark, "ozvenark")