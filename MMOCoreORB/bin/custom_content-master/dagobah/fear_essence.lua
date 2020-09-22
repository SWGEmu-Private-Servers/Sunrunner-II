fear_essence = Creature:new {
	customName = "the Essence of Fear",
	socialGroup = "spirit",
	faction = "",
	level = 400,
	chanceHit = 95,
	damageMin = 3050,
	damageMax = 3885,
	baseXp = 28549,
	baseHAM = 393750,
	baseHAMmax = 458900,
	armor = 3,
	resists = {200,200,175,170,190,200,200,155,-1},
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
	attacks = merge(tkamaster,forcepowermaster,curse,rend,corrode)
}

CreatureTemplates:addCreatureTemplate(fear_essence, "fear_essence")