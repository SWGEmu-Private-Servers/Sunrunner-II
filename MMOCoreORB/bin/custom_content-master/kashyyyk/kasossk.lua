kasossk = Creature:new {
	customName = "Kasossk (a Trandoshan hunting party leader)",
	socialGroup = "trandoshan",
	faction = "",
	level = 250,
	chanceHit = 75.5,
	damageMin = 2250,
	damageMax = 3070,
	baseXp = 20500,
	baseHAM = 187500,
	baseHAMmax = 225700,
	armor = 2,
	resists = {170,160,155,160,200,145,160,150,-1},
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

	templates = {"object/mobile/ep3/ep3_trando_slaver_03.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4400000},
				{group = "g_lance_trando", chance = 1000000},
				{group = "g_pistol_trando_suppressor", chance = 1000000},
				{group = "g_knife_trando_skinner", chance = 1000000},
				{group = "g_rifle_trando_hunter", chance = 200000},
				{group = "clothing_attachments", chance = 950000},
				{group = "armor_attachments", chance = 937500},
				{group = "g_kash_furniture", chance = 12500},
				{group = "g_avatar_key", chance = 500000}				
			},
			lootChance = 10000000
		}
	},
	weapons = {"brenarka_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,tkamaster,pikemanmaster,rend)
}

CreatureTemplates:addCreatureTemplate(kasossk, "kasossk")