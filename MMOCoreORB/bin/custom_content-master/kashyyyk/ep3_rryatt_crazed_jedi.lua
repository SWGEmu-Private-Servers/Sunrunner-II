ep3_rryatt_crazed_jedi = Creature:new {
	customName = "Urotaar (a crazed Jedi)",
	socialGroup = "crazed",
	faction = "",
	level = 250,
	chanceHit = 50.5,
	damageMin = 1750,
	damageMax = 2570,
	baseXp = 20500,
	baseHAM = 155000,
	baseHAMmax = 177000,
	armor = 2,
	resists = {170,170,170,170,170,170,170,170,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_rryatt_crazed_jedi.iff"},
	lootGroups = {	
	{
		groups = {
			{group = "green_light_gem", chance = 6000000},
			{group = "g_sword_acid", chance = 2000000},
			{group = "clothing_attachments", chance = 1000000},
			{group = "crystal_kits_ferocity", chance = 500000},
			{group = "g_avatar_key", chance = 500000}			
		},
		lootChance = 10000000		
	}
},
	weapons = {"light_jedi_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/fancy",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_crazed_jedi, "ep3_rryatt_crazed_jedi")