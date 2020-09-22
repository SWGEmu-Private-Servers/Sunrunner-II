anger_fragment = Creature:new {
	customName = "a Fragment of Anger",
	socialGroup = "spirit",
	faction = "",
	level = 210,
	chanceHit = 50,
	damageMin = 2350,
	damageMax = 2775,
	baseXp = 18540,
	baseHAM = 43250,
	baseHAMmax = 54500,
	armor = 2,
	resists = {160,155,165,170,160,200,160,45,-1},
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
	scale = 1.05,

	templates = {"object/mobile/outbreak_undead_civilian_01.iff"},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "weequay_common", chance = 1500000},
				{group = "beldonnas_common", chance = 1000000},
				{group = "dim_u_common", chance = 2250000},
				{group = "valarian_common", chance = 2250000}
			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = merge(tkamaster,forcepowermaster,curse,rend)
}

CreatureTemplates:addCreatureTemplate(anger_fragment, "anger_fragment")