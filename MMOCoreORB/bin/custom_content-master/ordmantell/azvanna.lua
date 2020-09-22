azvanna = Creature:new {
	customName = "Azvanna (Empress of the Sayormi Tribe)",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 330,
	chanceHit = 70.5,
	damageMin = 1975,
	damageMax = 2550,
	baseXp = 23923,
	baseHAM = 587500,
	baseHAMmax = 632750,
	armor = 3,
	resists = {190,200,195,195,185,200,200,190,-1},
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
		"object/mobile/dressed_wod_gray_outcast_09.iff"
		},
	scale = 1.075,
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000}
			},
			lootChance = 10000000
				},

	{

		groups = {

			{group = "g_exar_key", chance =  2000000},
			{group = "g_axkva_key", chance =  2000000},
			{group = "g_avatar_key", chance =  2000000},
			{group = "g_sherkar_key", chance =  2000000},
			{group = "g_ig_key", chance =  2000000}
			},

			lootChance = 10000000
			}

	},		

	weapons = {"acidic_axe"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(azvanna, "azvanna")