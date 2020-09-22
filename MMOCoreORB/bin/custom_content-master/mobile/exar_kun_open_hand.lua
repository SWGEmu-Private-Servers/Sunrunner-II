exar_kun_open_hand = Creature:new {
	customName = "the Open Hand of Hate",
	socialGroup = "exar",
	faction = "",
	level = 173,
	chanceHit = 20.5,
	damageMin = 1125,
	damageMax = 1625,
	baseXp = 16411,
	baseHAM = 155000,
	baseHAMmax = 185000,
	armor = 2,
	resists = {170,170,160,200,200,200,155,155,-1},
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
		"object/mobile/exar_kun_open_hand.iff"
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
	attacks = merge(brawlermaster,tkamaster,swordsmanmaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_open_hand, "exar_kun_open_hand")

