blackscale_enforcer = Creature:new {
	customName = "a Blackscale enforcer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 145,
	chanceHit = 35.75,
	damageMin = 1070,
	damageMax = 1450,
	baseXp = 17800,
	baseHAM = 39993,
	baseHAMmax = 44275,
	armor = 1,
	resists = {155,175,175,150,160,150,145,40,-1},
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

	templates = {
		"object/mobile/ep3/ep3_blackscale_enforcer_m_01.iff",
		"object/mobile/ep3/ep3_blackscale_enforcer_m_02.iff",
		"object/mobile/ep3/ep3_blackscale_enforcer_m_03.iff",
		"object/mobile/ep3/ep3_blackscale_enforcer_m_04.iff"},
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2900000},
				{group = "tailor_components", chance = 990000},
				{group = "melee_two_handed", chance = 2000000},
				{group = "g_pistol_trando_suppressor", chance = 1000000},
				{group = "g_rifle_trando_hunter", chance = 200000},
				{group = "clothing_attachments", chance = 950000},
				{group = "armor_attachments", chance = 937500},
				{group = "g_kash_furniture", chance = 12500},
				{group = "g_avatar_key", chance = 10000},
				{group = "g_blackscale_stock", chance = 1000000},
			}
		}
	},
	weapons = {"security_officer_weapons"},
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(blackscale_enforcer, "blackscale_enforcer")