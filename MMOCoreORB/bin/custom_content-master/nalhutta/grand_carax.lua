grand_carax = Creature:new {
	objectName = "@mob/creature_names:grand_carax",
	socialGroup = "carax",
	faction = "",
	level = 300,
	chanceHit = 50,
	damageMin = 2075,
	damageMax = 3025,
	baseXp = 26811,
	baseHAM = 288500,
	baseHAMmax = 347000,
	armor = 3,
	resists = {185,195,175,165,200,170,200,165,-1},
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
	hues = { 57, 58, 59, 60, 61, 62, 63, 64 },
	scale = 4,
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
		{"creatureareapoison","stateAccuracyBonus=75"},
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(grand_carax, "grand_carax")
