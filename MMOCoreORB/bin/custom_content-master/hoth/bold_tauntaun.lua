bold_tauntaun = Creature:new {
	objectName = "@mob/creature_names:bold_tauntaun",
	socialGroup = "tauntaun",
	faction = "",
	level = 35,
	chanceHit = 1,
	damageMin = 310,
	damageMax = 425,
	baseXp = 3905,
	baseHAM = 8575,
	baseHAMmax = 11250,
	armor = 0,
	resists = {150,145,35,-1,190,140,35,10,-1},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_bristley",
	hideAmount = 80,
	boneType = "bone_mammal",
	boneAmount = 45,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_tauntaun.iff"},
	controlDeviceTemplate = "object/intangible/pet/tauntaun_hue.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(bold_tauntaun, "bold_tauntaun")
