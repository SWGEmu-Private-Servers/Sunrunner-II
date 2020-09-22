exar_kun_fist_of_hate = Creature:new {
	customName = "the Clenched Fist of Hate",
	socialGroup = "exar",
	faction = "",
	level = 230,
	chanceHit = 30.5,
	damageMin = 1200,
	damageMax = 1800,
	baseXp = 24411,
	baseHAM = 225000,
	baseHAMmax = 255000,
	armor = 2,
	resists = {180,180,180,190,170,200,160,160,-1},
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
		"object/mobile/exar_kun_fist_of_hate.iff"
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
	weapons = {"mordran_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun_fist_of_hate, "exar_kun_fist_of_hate")

