fear_fragment = Creature:new {
	customName = "a Fragment of Fear",
	socialGroup = "spirit",
	faction = "",
	level = 210,
	chanceHit = 50,
	damageMin = 2250,
	damageMax = 2675,
	baseXp = 18540,
	baseHAM = 41250,
	baseHAMmax = 52500,
	armor = 2,
	resists = {155,160,175,160,150,200,200,45,-1},
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

CreatureTemplates:addCreatureTemplate(fear_fragment, "fear_fragment")