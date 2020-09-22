hate_fragment = Creature:new {
	customName = "a Fragment of Hate",
	socialGroup = "spirit",
	faction = "",
	level = 210,
	chanceHit = 50,
	damageMin = 2450,
	damageMax = 2875,
	baseXp = 18540,
	baseHAM = 45250,
	baseHAMmax = 56500,
	armor = 2,
	resists = {165,165,160,180,165,200,165,45,-1},
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

	templates = {"object/mobile/outbreak_undead_civilian_02.iff"},

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

CreatureTemplates:addCreatureTemplate(hate_fragment, "hate_fragment")