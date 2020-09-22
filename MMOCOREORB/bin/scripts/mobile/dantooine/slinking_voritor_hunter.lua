slinking_voritor_hunter = Creature:new {
	objectName = "@mob/creature_names:slinking_voritor_hunter",
	socialGroup = "voritor",
	faction = "",
	level = 57,
	chanceHit = 1.5,
	damageMin = 420,
	damageMax = 550,
	baseXp = 5555,
	baseHAM = 12000,
	baseHAMmax = 14000,
	armor = 1,
	resists = {155,155,160,140,150,160,180,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 90,
	hideType = "hide_leathery",
	hideAmount = 65,
	boneType = "bone_avian",
	boneAmount = 50,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/slinking_voritor_hunter.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/voritor_lizard_hue.iff",
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "voritor_lizard_common", chance = 10000000}
			},
			lootChance = 6140000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=100"},
		{"dizzyattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(slinking_voritor_hunter, "slinking_voritor_hunter")