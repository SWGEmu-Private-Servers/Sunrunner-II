promised_vengeance = Creature:new {
	customName = "the Promised Vengeance of Exar Kun",
	socialGroup = "exar",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1250,
	damageMax = 1775,
	baseXp = 22411,
	baseHAM = 100000,
	baseHAMmax = 125000,
	armor = 2,
	resists = {200,175,200,175,200,175,200,200,-1},
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
		"object/mobile/exar_kun_cultist_03.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3500000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "melee_weapons", chance = 3000000},
				{group = "g_heroic_exar_kun_painting", chance = 500000},
			}
		}
	},
	weapons = {"melee_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,swordsmanmaster,pikemanmaster,fencermaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(promised_vengeance, "promised_vengeance")

