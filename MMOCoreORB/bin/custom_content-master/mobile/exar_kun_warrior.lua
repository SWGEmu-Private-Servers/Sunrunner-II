exar_kun_warrior = Creature:new {
	customName = "an Exar Kun warrior",
	socialGroup = "exar",
	faction = "",
	level = 110,
	chanceHit = 15.5,
	damageMin = 975,
	damageMax = 1250,
	baseXp = 10825,
	baseHAM = 27000,
	baseHAMmax = 31500,
	armor = 1,
	resists = {175,170,155,190,185,200,155,150,-1},
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
		"object/mobile/exar_kun_warrior.iff",
		"object/mobile/exar_kun_warrior_f.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "melee_weapons", chance = 1750000},
				{group = "g_massassiknuckler", chance = 2000000},
				{group = "g_sword_massassi", chance = 2000000},
				{group = "g_power_plant_sith", chance = 250000},

			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_warrior, "exar_kun_warrior")

