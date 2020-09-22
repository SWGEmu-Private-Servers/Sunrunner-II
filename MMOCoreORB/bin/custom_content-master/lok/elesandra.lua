elesandra = Creature:new {
	customName = "Elesandra (Crimson Marauder's chief droid engineer)",
	socialGroup = "crimson",
	faction = "",
	level = 150,
	chanceHit = 12.5,
	damageMin = 800,
	damageMax = 1225,
	baseXp = 14525,
	baseHAM = 90000,
	baseHAMmax = 115000,
	armor = 2,
	resists = {165,165,155,165,165,185,155,155,-1},
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
		"object/mobile/coa_dathnaeya_loessin.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6400000},
				{group = "g_elesandra_ring", chance = 1500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_ig_key", chance = 100000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,marksmanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(elesandra, "elesandra")