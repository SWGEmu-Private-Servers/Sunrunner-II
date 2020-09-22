rryatt_gotal_hunter_champion = Creature:new {
	customName = "Gotal hunter champion",
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,	
	socialGroup = "gotal",
	faction = "",
	level = 140,
	chanceHit = 40.5,
	damageMin = 1670,
	damageMax = 1980,
	baseXp = 20500,
	baseHAM = 53000,
	baseHAMmax = 64000,
	armor = 2,
	resists = {170,180,160,145,200,165,160,150,-1},
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
			"object/mobile/ep3/ep3_rryatt_gotal_hunter_champion_01.iff",
			"object/mobile/ep3/ep3_rryatt_gotal_hunter_champion_02.iff"},
	scale = 1.1,			
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
	weapons = {"prison_guard_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,swordsmanmaster,tkamaster,fencermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(rryatt_gotal_hunter_champion, "rryatt_gotal_hunter_champion")