ai_controlled_dark_jedi = Creature:new {
	customName = "AI-Controlled dark jedi",
	socialGroup = "cybernetic",
	faction = "",
	level = 173,
	chanceHit = 18.5,
	damageMin = 985,
	damageMax = 1700,
	baseXp = 16411,
	baseHAM = 125000,
	baseHAMmax = 140000,
	armor = 2,
	resists = {160,160,145,140,160,150,155,150,-1},
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
		"object/mobile/dressed_dark_jedi_female_zab_02.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 2800000},
				{group = "armor_attachments", chance = 1300000},
				{group = "clothing_attachments", chance = 1300000},
				{group = "holocron_dark", chance = 800000},
				{group = "holocron_light", chance = 800000},
				{group = "color_crystals", chance = 2000000},
				{group = "g_dj_necklace", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen2"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(ai_controlled_dark_jedi, "ai_controlled_dark_jedi")