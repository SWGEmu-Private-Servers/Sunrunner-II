guardian_mark_ii = Creature:new {
	customName = "Guardian Mark II",
	socialGroup = "guardianmk",
	faction = "",
	level = 80,
	chanceHit = 7.5,
	damageMin = 550,
	damageMax = 750,
	baseXp = 7115,
	baseHAM = 19500,
	baseHAMmax = 23500,
	armor = 1,
	resists = {160,155,145,140,160,140,170,145,-1},
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

	templates = {"object/mobile/guardian_mark_ii_crafted.iff"},
	scale = 1,
	lootGroups = {
		{
			groups = {
				{group = "wearables_rare", chance = 2000000},
				{group = "g_cybernetics", chance = 20000},
				{group = "g_8d8_loot_schem", chance = 80000},
				{group = "dim_u_common", chance = 5000000},
				{group = "valarian_common", chance = 2900000}
			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(guardian_mark_ii, "guardian_mark_ii")
