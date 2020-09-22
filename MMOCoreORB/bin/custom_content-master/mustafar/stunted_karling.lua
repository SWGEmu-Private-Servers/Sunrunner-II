stunted_karling = Creature:new {
	objectName = "@mob/creature_names:stunted_karling",
	socialGroup = "sherkar",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 470,
	damageMax = 700,
	baseXp = 10549,
	baseHAM = 14250,
	baseHAMmax = 18500,
	armor = 1,
	resists = {160,165,165,200,155,160,200,160,-1},
	meatType = "meat_insect",
	meatAmount = 220,
	hideType = "hide_scaley",
	hideAmount = 270,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,


	templates = {"object/mobile/som/sher_kar.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/sherkar.iff",
	scale = 0.15,
	lootGroups = {

		{
			groups = {
				{group = "g_sherkar_key", chance = 10000000}
			},
			lootChance = 50000
		},

	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"creatureareaknockdown","stateAccuracyBonus=100"},
	}
}

CreatureTemplates:addCreatureTemplate(stunted_karling, "stunted_karling")
