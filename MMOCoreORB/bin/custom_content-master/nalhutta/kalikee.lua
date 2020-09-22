kalikee = Creature:new {
	customName = "Kalikee (a ruthless marauder)",
	socialGroup = "gasplant",
	faction = "",
	level = 350,
	chanceHit = 45,
	damageMin = 2070,
	damageMax = 2450,
	baseXp = 15820,
	baseHAM = 282950,
	baseHAMmax = 317750,
	armor = 2,
	resists = {200,170,165,165,190,170,200,160,-1},
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
		"object/mobile/dressed_spice_collective_foreman_trandoshan_male_01.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "g_polearm_heroic_sd", chance = 1000000},
				{group = "g_lance_cryo", chance = 1000000},
				{group = "g_lance_kaminoan", chance = 1000000},
				{group = "green_light_gem", chance = 2750000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"hardened_commander_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(kalikee, "kalikee")