ancient_graul = Creature:new {
	objectName = "@mob/creature_names:ancient_graul",
	socialGroup = "graul",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 370,
	damageMax = 450,
	baseXp = 4825,
	baseHAM = 12500,
	baseHAMmax = 14900,
	armor = 1,
	resists = {160,150,170,170,170,145,150,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 950,
	hideType = "hide_leathery",
	hideAmount = 875,
	boneType = "bone_mammal",
	boneAmount = 775,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/graul_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/graul_hue.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"blindattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(ancient_graul, "ancient_graul")