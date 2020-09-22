grotog = Creature:new {
	customName = "Grotog (Doctor Treilan's apprentice)",
	socialGroup = "cybernetic",
	faction = "",
	level = 200,
	chanceHit = 18.5,
	damageMin = 1150,
	damageMax = 1750,
	baseXp = 22411,
	baseHAM = 175000,
	baseHAMmax = 195000,
	armor = 2,
	resists = {165,165,150,150,165,155,160,150,-1},
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
	scale = 1.15,

	templates = {
		"object/mobile/dressed_dark_jedi_elder_male_human_03.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 5000000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "g_grotog_ring", chance = 1000000}
			}
		}
	},
	weapons = {"mordran_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(grotog, "grotog")

