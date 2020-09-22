crazed_cybernetic_associate = Creature:new {
	customName = "Crazed Cybernetic Associate",
	socialGroup = "cybernetic",
	faction = "",
	level = 87,
	chanceHit = 2.5,
	damageMin = 600,
	damageMax = 850,
	baseXp = 8315,
	baseHAM = 15500,
	baseHAMmax = 18500,
	armor = 1,
	resists = {150,155,145,145,155,160,140,140,-1},
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
		"object/mobile/dressed_biologist_01.iff",
		"object/mobile/dressed_biologist_04.iff",
		"object/mobile/dressed_trader_thug_female_human_02.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3150000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1350000},
				{group = "g_cybernetic_research_layer", chance = 1000000},
				{group = "borvos_common", chance = 3000000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,marksmanmaster,riflemanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(crazed_cybernetic_associate, "crazed_cybernetic_associate")

