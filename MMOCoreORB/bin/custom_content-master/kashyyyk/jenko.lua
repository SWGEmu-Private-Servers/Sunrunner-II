jenko = Creature:new {
	customName = "Jenko (a Gotal hunter leader)",	
	socialGroup = "gotal",
	faction = "",
	level = 300,
	chanceHit = 70.5,
	damageMin = 2070,
	damageMax = 2480,
	baseXp = 25500,
	baseHAM = 223000,
	baseHAMmax = 265000,
	armor = 3,
	resists = {175,180,165,150,200,165,165,155,-1},
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

	templates = {"object/mobile/ep3/ep3_rryatt_gotal_hunter_leader.iff"},
	scale = 1.2,			
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4990000},
				{group = "g_rifle_adventurer", chance = 1500000},
				{group = "g_two_handed_sword_kashyyk", chance = 200000},
				{group = "clothing_attachments", chance = 650000},
				{group = "armor_attachments", chance = 1137500},
				{group = "g_kash_furniture", chance = 22500},
				{group = "g_avatar_key", chance = 500000},
				{group = "g_tainted_feed_mechanism", chance = 1000000},


			},
			lootChance = 10000000
		}
	},
	weapons = {"acidic_axe"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,pikemanmaster,rend)
}

CreatureTemplates:addCreatureTemplate(jenko, "jenko")