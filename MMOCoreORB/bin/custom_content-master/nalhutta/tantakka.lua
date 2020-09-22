tantakka = Creature:new {
	customName = "Tantakka (a brutal pirate)",
	socialGroup = "gasplant",
	faction = "",
	level = 170,
	chanceHit = 40,
	damageMin = 1770,
	damageMax = 2150,
	baseXp = 10820,
	baseHAM = 142950,
	baseHAMmax = 167750,
	armor = 2,
	resists = {170,170,165,165,160,160,185,155,-1},
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
		"object/mobile/dressed_wod_omogg_rep.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "g_two_handed_sword_sith", chance = 1000000},
				{group = "g_sword_acid", chance = 1000000},
				{group = "green_light_gem", chance = 2500000},
				{group = "armor_attachments", chance = 2000000},
				{group = "g_gas_plant_junk", chance = 1250000},
				{group = "clothing_attachments", chance = 2250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"feared_duelist_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(tantakka, "tantakka")