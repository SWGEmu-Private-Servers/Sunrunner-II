cybernetic_sentinel = Creature:new {
	customName = "Cybernetic Sentinel",
	socialGroup = "cybernetic",
	faction = "",
	level = 135,
	chanceHit = 6.5,
	damageMin = 800,
	damageMax = 1260,
	baseXp = 12801,
	baseHAM = 42500,
	baseHAMmax = 51500,
	armor = 2,
	resists = {165,165,155,150,165,165,165,150,-1},
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
	scale = 1.35,

	templates = {
		"object/mobile/dressed_bh_male_twk_03.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 2750000},
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 1750000},
				{group = "g_cybernetic_research_layer", chance = 1000000},
				{group = "borvos_common", chance = 2500000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(cybernetic_sentinel, "cybernetic_sentinel")

