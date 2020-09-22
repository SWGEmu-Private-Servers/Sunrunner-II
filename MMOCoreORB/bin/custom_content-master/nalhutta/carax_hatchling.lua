carax_hatchling = Creature:new {
	objectName = "@mob/creature_names:carax_hatchling",
	socialGroup = "carax",
	faction = "",
	level = 72,
	chanceHit = 10,
	damageMin = 700,
	damageMax = 970,
	baseXp = 5811,
	baseHAM = 12500,
	baseHAMmax = 18500,
	armor = 1,
	resists = {155,160,150,40,160,155,180,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 200,
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
	scale = 0.85,
	lootGroups = {
	 {
	        groups = {
				{group = "g_carax_carapace", chance = 5000000},
				{group = "g_carax_venom", chance = 5000000},
			},
			lootChance = 1000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"creatureareacombo","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(carax_hatchling, "carax_hatchling")
