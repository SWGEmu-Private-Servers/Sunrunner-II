ep3_trando_slavemaster_01 = Creature:new {
	customName = "a Trandoshan slavemaster",	
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,
	socialGroup = "trandoshan",
	faction = "",
	level = 100,
	chanceHit = 1.00,
	damageMin = 950,
	damageMax = 1270,
	baseXp = 7500,
	baseHAM = 50000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {60,60,80,60,55,65,85,45,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_trando_slavemaster_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "tailor_components", chance = 1000000},
				{group = "melee_two_handed", chance = 1000000},
				{group = "g_avatar_key", chance = 200000},
				{group = "pistols", chance = 800000},
				{group = "rifles", chance = 800000},
				{group = "g_rifle_trando_hunter", chance = 800000},
				{group = "clothing_attachments", chance = 950000},
				{group = "armor_attachments", chance = 925000},
				{group = "g_kash_furniture", chance = 25000},
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_trando_slavemaster_01, "ep3_trando_slavemaster_01")
