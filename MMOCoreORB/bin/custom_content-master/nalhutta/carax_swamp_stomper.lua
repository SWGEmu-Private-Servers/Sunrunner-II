carax_swamp_stomper = Creature:new {
	objectName = "@mob/creature_names:carax_swamp_stomper",
	socialGroup = "carax",
	faction = "",
	level = 210,
	chanceHit = 15,
	damageMin = 1500,
	damageMax = 2200,
	baseXp = 19811,
	baseHAM = 195000,
	baseHAMmax = 240000,
	armor = 2,
	resists = {175,175,170,155,185,165,200,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
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

	templates = {"object/mobile/carax.iff"},
	hues = { 33, 34, 35, 36, 37, 38, 39, 40 },
	scale = 3.3,
	lootGroups = {
	 {
	        groups = {
				{group = "g_carax_carapace", chance = 5000000},
				{group = "g_carax_venom", chance = 5000000},
			},
			lootChance = 5000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(carax_swamp_stomper, "carax_swamp_stomper")
