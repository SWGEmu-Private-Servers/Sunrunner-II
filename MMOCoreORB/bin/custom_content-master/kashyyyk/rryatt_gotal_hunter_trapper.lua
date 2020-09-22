rryatt_gotal_hunter_trapper = Creature:new {
	customName = "Gotal hunter trapper",
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,	
	socialGroup = "gotal",
	faction = "",
	level = 130,
	chanceHit = 35.5,
	damageMin = 1470,
	damageMax = 1850,
	baseXp = 19500,
	baseHAM = 48700,
	baseHAMmax = 57500,
	armor = 1,
	resists = {165,180,150,40,200,165,155,150,-1},
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
			"object/mobile/ep3/ep3_rryatt_gotal_hunter_trapper_01.iff",
			"object/mobile/ep3/ep3_rryatt_gotal_hunter_trapper_02.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2900000},
				{group = "tailor_components", chance = 990000},
				{group = "melee_two_handed", chance = 2000000},
				{group = "g_rifle_adventurer", chance = 1000000},
				{group = "g_two_handed_sword_kashyyk", chance = 200000},
				{group = "clothing_attachments", chance = 950000},
				{group = "armor_attachments", chance = 937500},
				{group = "g_kash_furniture", chance = 12500},
				{group = "g_avatar_key", chance = 10000},
				{group = "g_tainted_feed_mechanism", chance = 1000000}
			}
		}
	},
	weapons = {"security_officer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(rryatt_gotal_hunter_trapper, "rryatt_gotal_hunter_trapper")