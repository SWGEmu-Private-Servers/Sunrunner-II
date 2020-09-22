psycho_rodian = Creature:new {
	customName = "a psychopathic Rodian outcast",
	socialGroup = "townsperson",
	faction = "",
	level = 250,
	chanceHit = 75.5,
	damageMin = 2175,
	damageMax = 2970,
	baseXp = 19500,
	baseHAM = 167000,
	baseHAMmax = 198500,
	armor = 2,
	resists = {165,170,180,170,150,165,185,150,-1},
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
	scale = 1.2,	
	lootGroups = {
	{
		groups = {
			{group = "green_light_gem", chance = 5000000},
			{group = "g_rifle_adventurer", chance = 2500000},
			{group = "clothing_attachments", chance = 1000000},
			{group = "g_lance_cryo", chance = 1000000},
			{group = "g_avatar_key", chance = 500000}			
		},
		lootChance = 10000000		
	}
},
	weapons = {"hardened_commander_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,pikemanmaster,rend)
}

CreatureTemplates:addCreatureTemplate(psycho_rodian, "psycho_rodian")
