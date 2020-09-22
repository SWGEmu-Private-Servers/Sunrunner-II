exar_kun_minder = Creature:new {
	customName = "the Minder of Weak Wills",
	socialGroup = "exar",
	faction = "",
	level = 173,
	chanceHit = 20.5,
	damageMin = 1350,
	damageMax = 1925,
	baseXp = 16411,
	baseHAM = 165000,
	baseHAMmax = 195000,
	armor = 2,
	resists = {170,170,160,200,200,200,200,155,-1},
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
		"object/mobile/exar_kun_minder.iff"
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
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,swordsmanmaster,pikemanmaster,fencermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_minder, "exar_kun_minder")

