cybernetic_mercenary = Creature:new {
	customName = "Cybernetic Mercenary",
	socialGroup = "cybernetic",
	faction = "",
	level = 129,
	chanceHit = 5.5,
	damageMin = 750,
	damageMax = 1180,
	baseXp = 12235,
	baseHAM = 32500,
	baseHAMmax = 39500,
	armor = 2,
	resists = {160,165,150,150,160,160,155,145,-1},
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
		"object/mobile/dressed_dark_jedi_master_female_bothan_01.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 3000000},
				{group = "armor_attachments", chance = 1750000},
				{group = "clothing_attachments", chance = 1500000},
				{group = "g_cybernetic_research_layer", chance = 1000000},
				{group = "borvos_common", chance = 2750000}
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(cybernetic_mercenary, "cybernetic_mercenary")

