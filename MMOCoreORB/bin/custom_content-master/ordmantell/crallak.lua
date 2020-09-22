crallak = Creature:new {
	customName = "Crallak (Strider Syndicate's leader)",
	socialGroup = "strider",
	faction = "strider",
	level = 330,
	chanceHit = 70.5,
	damageMin = 2275,
	damageMax = 2875,
	baseXp = 23923,
	baseHAM = 615000,
	baseHAMmax = 665350,
	armor = 3,
	resists = {190,185,200,180,200,200,190,175,-1},
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
		"object/mobile/dressed_bh_male_rodian_01.iff"
	},
	scale = 1.1,
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
	attacks = merge(brawlermaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(crallak, "crallak")