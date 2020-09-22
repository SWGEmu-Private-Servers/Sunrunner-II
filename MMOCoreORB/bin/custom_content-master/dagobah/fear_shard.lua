fear_shard = Creature:new {
	customName = "a Shard of Fear",
	socialGroup = "spirit",
	faction = "",
	level = 280,
	chanceHit = 50,
	damageMin = 2450,
	damageMax = 3275,
	baseXp = 22549,
	baseHAM = 63750,
	baseHAMmax = 75800,
	armor = 2,
	resists = {170,160,175,170,170,200,200,45,-1},
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
	scale = 1.1,

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
	attacks = merge(tkamaster,forcepowermaster,curse,rend,toxify)
}

CreatureTemplates:addCreatureTemplate(fear_shard, "fear_shard")