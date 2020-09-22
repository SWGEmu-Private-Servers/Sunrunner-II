frenzied_graul = Creature:new {
	objectName = "@mob/creature_names:frenzied_graul",
	socialGroup = "graul",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 350,
	damageMax = 700,
	baseXp = 6000,
	baseHAM = 15750,
	baseHAMmax = 18750,
	armor = 1,
	resists = {165,160,190,180,180,155,165,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 855,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 15,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/frenzied_graul.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/graul_hue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(frenzied_graul, "frenzied_graul")
