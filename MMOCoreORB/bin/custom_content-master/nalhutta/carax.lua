carax = Creature:new {
	objectName = "@mob/creature_names:carax",
	socialGroup = "carax",
	faction = "",
	level = 173,
	chanceHit = 12,
	damageMin = 1100,
	damageMax = 1800,
	baseXp = 16411,
	baseHAM = 165000,
	baseHAMmax = 210000,
	armor = 2,
	resists = {165,175,165,150,180,165,200,160,-1},
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
	scale = 3,
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
		{"strongpoison",""},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(carax, "carax")
