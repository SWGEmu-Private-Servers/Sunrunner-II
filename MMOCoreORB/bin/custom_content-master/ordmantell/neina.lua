neina = Creature:new {
	customName = "Neina (a trusted handmaiden)",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 150,
	chanceHit = 30.5,
	damageMin = 1675,
	damageMax = 2020,
	baseXp = 12723,
	baseHAM = 137500,
	baseHAMmax = 172500,
	armor = 2,
	resists = {165,180,160,165,150,190,195,155,-1},
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
		"object/mobile/dressed_wod_gray_outcast_04.iff"
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
	weapons = {"mordran_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(neina, "neina")