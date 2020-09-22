gorvo = Creature:new {
	customName = "Gorvo",
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 230,
	chanceHit = 30.5,
	damageMin = 1200,
	damageMax = 2450,
	baseXp = 24411,
	baseHAM = 215000,
	baseHAMmax = 235000,
	armor = 2,
	resists = {165,185,160,180,180,180,160,170,-1},
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
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_rancor.iff"},
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "rancor_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "weapons_all", chance = 2500000},
				{group = "wearables_rare", chance = 1500000}
			},
			lootChance = 2500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(gorvo, "gorvo")
