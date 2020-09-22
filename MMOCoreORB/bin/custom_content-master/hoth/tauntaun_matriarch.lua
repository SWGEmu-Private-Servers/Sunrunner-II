tauntaun_matriarch = Creature:new {
	customName = "a tauntaun matriarch",
	socialGroup = "tauntaun",
	faction = "",
	level = 50,
	chanceHit = 5,
	damageMin = 400,
	damageMax = 520,
	baseXp = 4916,
	baseHAM = 18550,
	baseHAMmax = 22350,
	armor = 1,
	resists = {150,145,35,5,200,140,140,15,-1},
	meatType = "meat_herbivore",
	meatAmount = 60,
	hideType = "hide_bristley",
	hideAmount = 65,
	boneType = "bone_mammal",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_tauntaun.iff"},
	scale = 1.8,
	lootGroups = {
		{
			groups = {
				{group = "g_tauntaun_skull_backpack", chance = 10000000},
			},
			lootChance = 500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=75"},
		{"knockdownattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(tauntaun_matriarch, "tauntaun_matriarch")
