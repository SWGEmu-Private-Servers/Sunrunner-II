ep3_lord_cyssc = Creature:new {
	customName = "Lord Cyssc",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 320,
	chanceHit = 95,
	damageMin = 2450,
	damageMax = 2970,
	baseXp = 20880,
	baseHAM = 295000,
	baseHAMmax = 336000,
	armor = 3,
	resists = {180,180,180,170,170,200,185,160,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_lord_cyssc.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_lance_trando", chance = 1000000},
				{group = "g_pistol_trando_suppressor", chance = 1000000},
				{group = "g_rifle_trando_hunter", chance = 1000000},
				{group = "g_rifle_proton", chance = 1000000},
				{group = "g_carbine_proton", chance = 2000000},
				{group = "g_pistol_wookiee", chance = 1000000},
				{group = "g_rifle_ld1", chance = 1000000},
				{group = "g_barc_speeder", chance = 1000000},
				{group = "g_carbine_dc15", chance = 500000},
				{group = "g_rifle_dc15", chance = 500000},
				
			},
			lootChance = 10000000
			},
		{
	        groups = {
			{group = "armor_attachments", chance = 2500000},
			{group = "clothing_attachments", chance = 2500000},
			{group = "g_jellyfish_hologram", chance = 1000000},
			{group = "g_pistol_ion_stunner", chance = 2000000},	
			{group = "g_sword_acid", chance = 2000000}				
			},
			lootchance = 10000000
			}
	},

	weapons = {"specforce_agent_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermaster,brawlermaster,forcepowermaster,curse,rend)
}

CreatureTemplates:addCreatureTemplate(ep3_lord_cyssc, "ep3_lord_cyssc")