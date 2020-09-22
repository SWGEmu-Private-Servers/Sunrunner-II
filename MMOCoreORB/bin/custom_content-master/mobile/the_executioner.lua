the_executioner = Creature:new {
	customName = "The Executioner",
	socialGroup = "exar",
	faction = "",
	level = 185,
	chanceHit = 30.5,
	damageMin = 1350,
	damageMax = 1725,
	baseXp = 18611,
	baseHAM = 145000,
	baseHAMmax = 175000,
	armor = 2,
	resists = {180,160,160,170,180,200,175,155,-1},
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
		"object/mobile/exar_kun_cultist_f_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "melee_weapons", chance = 2000000},
				{group = "g_massassiknuckler", chance = 2000000},
				{group = "g_sword_massassi", chance = 2000000},
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(the_executioner, "the_executioner")
