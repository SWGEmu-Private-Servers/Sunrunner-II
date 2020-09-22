ep3_rryatt_lost_rodian_maddened_01 = Creature:new {
	customName = "a maddened Rodian",
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "",
	level = 95,
	chanceHit = 15,
	damageMin = 1150,
	damageMax = 1570,
	baseXp = 10500,
	baseHAM = 36000,
	baseHAMmax = 41000,
	armor = 2,
	resists = {150,150,180,160,40,155,180,40,-1},
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

	templates = {"object/mobile/ep3/ep3_rryatt_lost_rodian_maddened_01.iff"},
	lootGroups = {
	{
		groups = {
			{group = "junk", chance = 3500000},
			{group = "melee_weapons", chance = 3000000},
			{group = "g_rifle_adventurer", chance = 2000000},
			{group = "clothing_attachments", chance = 1000000},
			{group = "wearables_rare", chance = 500000},
		}
	}
},
	weapons = {"hardened_commander_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_lost_rodian_maddened_01, "ep3_rryatt_lost_rodian_maddened_01")