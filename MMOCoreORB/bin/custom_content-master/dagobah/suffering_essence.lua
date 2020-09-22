suffering_essence = Creature:new {
	customName = "the Essence of Suffering",
	socialGroup = "spirit",
	faction = "",
	level = 450,
	chanceHit = 95,
	damageMin = 3650,
	damageMax = 4985,
	baseXp = 32549,
	baseHAM = 443750,
	baseHAMmax = 508900,
	armor = 3,
	resists = {190,190,200,200,200,200,200,185,-1},
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
	scale = 1.2,

	templates = {"object/mobile/outbreak_undead_civilian_03.iff"},

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
	attacks = merge(tkamaster,forcepowermaster,curse,rend,affliction,terrorize)
}

CreatureTemplates:addCreatureTemplate(suffering_essence, "suffering_essence")