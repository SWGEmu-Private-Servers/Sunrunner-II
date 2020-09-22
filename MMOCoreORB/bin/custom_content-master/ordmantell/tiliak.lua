tiliak = Creature:new {
	customName = "Tiliak (the grogilla's keeper)",
	socialGroup = "grogilla",
	faction = "",
	level = 120,
	chanceHit = 30.5,
	damageMin = 1425,
	damageMax = 1700,
	baseXp = 10723,
	baseHAM = 87500,
	baseHAMmax = 93750,
	armor = 1,
	resists = {165,160,155,160,160,170,165,160,-1},
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
	creatureBitmask = PACK + HERD + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_wod_gray_outcast_08.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(tiliak, "tiliak")