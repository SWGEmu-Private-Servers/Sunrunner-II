exar_kun_cultist = Creature:new {
	customName = "an Exar Kun cultist",
	socialGroup = "exar",
	faction = "",
	level = 80,
	chanceHit = 5,
	damageMin = 565,
	damageMax = 800,
	baseXp = 7407,
	baseHAM = 19000,
	baseHAMmax = 22500,
	armor = 1,
	resists = {165,165,145,180,180,200,145,140,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/exar_kun_cultist.iff",
		"object/mobile/exar_kun_cultist_01.iff",
		"object/mobile/exar_kun_cultist_02.iff",
		"object/mobile/exar_kun_cultist_03.iff",
		"object/mobile/exar_kun_cultist_f.iff",
		"object/mobile/exar_kun_cultist_f_01.iff",
		"object/mobile/exar_kun_cultist_f_02.iff",
		"object/mobile/exar_kun_cultist_f_03.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "melee_weapons", chance = 3000000},
				{group = "rifles", chance = 200000},
				{group = "pistols", chance = 600000},
				{group = "carbines", chance = 200000},
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(exar_kun_cultist, "exar_kun_cultist")

