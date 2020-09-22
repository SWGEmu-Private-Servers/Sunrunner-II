
hesskar = Creature:new {
	customName = "Hesskar (a Blackscale captain)",
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 275,
	chanceHit = 75.5,
	damageMin = 2270,
	damageMax = 3050,
	baseXp = 20800,
	baseHAM = 196725,
	baseHAMmax = 235975,
	armor = 2,
	resists = {165,185,180,160,170,155,155,150,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_blackscale_assault_m_03.iff"},
	scale = 1.2,
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 2590000},
				{group = "g_lance_trando", chance = 2000000},
				{group = "g_pistol_trando_suppressor", chance = 2000000},
				{group = "g_rifle_trando_hunter", chance = 200000},
				{group = "clothing_attachments", chance = 1150000},
				{group = "armor_attachments", chance = 1137500},
				{group = "g_kash_furniture", chance = 422500},
				{group = "g_avatar_key", chance = 500000}
			},
			lootChance = 10000000			
		}
	},
	weapons = {"daunting_enforcer_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,pikemanmaster,fencermaster,swordsmanmaster,rend)
}

CreatureTemplates:addCreatureTemplate(hesskar, "hesskar")