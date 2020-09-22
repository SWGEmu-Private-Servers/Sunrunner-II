carax_pulverizer = Creature:new {
	objectName = "@mob/creature_names:carax_pulverizer",
	socialGroup = "carax",
	faction = "",
	level = 260,
	chanceHit = 30,
	damageMin = 1825,
	damageMax = 2550,
	baseXp = 22811,
	baseHAM = 233500,
	baseHAMmax = 275000,
	armor = 3,
	resists = {180,180,175,160,190,170,200,165,-1},
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
	hues = { 25, 26, 27, 28, 29, 30, 31, 32 },
	scale = 3.65,
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
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(carax_pulverizer, "carax_pulverizer")
