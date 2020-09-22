ep3_rryatt_lost_rodian_deranged_01 = Creature:new {
	customName = "a deranged Rodian",
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,
	socialGroup = "townsperson",
	faction = "",
	level = 95,
	chanceHit = 10.5,
	damageMin = 920,
	damageMax = 1270,
	baseXp = 10500,
	baseHAM = 30000,
	baseHAMmax = 35000,
	armor = 2,
	resists = {40,40,180,160,35,155,175,40,-1},
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

	templates = {"object/mobile/ep3/ep3_rryatt_lost_rodian_deranged_01.iff"},
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
	weapons = {"security_officer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_lost_rodian_deranged_01, "ep3_rryatt_lost_rodian_deranged_01")