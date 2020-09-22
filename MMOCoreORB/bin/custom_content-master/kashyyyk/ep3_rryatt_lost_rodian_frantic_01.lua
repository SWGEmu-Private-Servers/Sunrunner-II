ep3_rryatt_lost_rodian_frantic_01 = Creature:new {
	customName = "a frantic Rodian",
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "",
	level = 95,
	chanceHit = 12.5,
	damageMin = 980,
	damageMax = 1480,
	baseXp = 10500,
	baseHAM = 33000,
	baseHAMmax = 38000,
	armor = 2,
	resists = {45,45,180,160,40,155,175,40,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_rryatt_lost_rodian_frantic_01.iff"},
	lootGroups = {
	{
		groups = {
			{group = "junk", chance = 3000000},
			{group = "melee_weapons", chance = 2000000},
			{group = "rifles", chance = 2000000},
			{group = "clothing_attachments", chance = 2000000},
			{group = "wearables_rare", chance = 500000},
			{group = "g_rifle_adventurer", chance = 500000}
		}
	}
},
	weapons = {"sif_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,fencermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_lost_rodian_frantic_01, "ep3_rryatt_lost_rodian_frantic_01")