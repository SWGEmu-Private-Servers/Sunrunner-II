venquilith = Creature:new {
	customName = "Venquilith (the Sayormi Empress's subordinate)",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 250,
	chanceHit = 30.5,
	damageMin = 1475,
	damageMax = 1970,
	baseXp = 17723,
	baseHAM = 245000,
	baseHAMmax = 295000,
	armor = 3,
	resists = {170,170,160,160,155,180,175,150,-1},
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
		"object/mobile/dressed_wod_gray_outcast_05.iff"
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

CreatureTemplates:addCreatureTemplate(venquilith, "venquilith")