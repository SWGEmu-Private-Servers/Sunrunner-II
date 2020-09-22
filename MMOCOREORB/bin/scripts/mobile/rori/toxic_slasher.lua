toxic_slasher = Creature:new {
	objectName = "@mob/creature_names:vir_vur_toxic_slasher",
	socialGroup = "vir_vur",
	faction = "",
	level = 15,
	chanceHit = 1.25,
	damageMin = 180,
	damageMax = 180,
	baseXp = 1731,
	baseHAM = 1500,
	baseHAMmax = 1700,
	armor = 0,
	resists = {130,120,130,120,140,140,0,110,-1},
	meatType = "meat_avian",
	meatAmount = 20,
	hideType = "hide_wooly",
	hideAmount = 20,
	boneType = "bone_mammal",
	boneAmount = 4,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/vir_vur_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/vir_vur_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"mildpoison","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(toxic_slasher, "toxic_slasher")