infuriated_roba_protector = Creature:new {
	objectName = "@mob/creature_names:roba_infuriated_protectorate",
	socialGroup = "roba",
	faction = "",
	level = 57,
	chanceHit = 1.5,
	damageMin = 420,
	damageMax = 550,
	baseXp = 5555,
	baseHAM = 12000,
	baseHAMmax = 15000,
	armor = 1,
	resists = {155,145,145,150,165,160,155,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 120,
	hideType = "hide_leathery",
	hideAmount = 95,
	boneType = "bone_mammal",
	boneAmount = 70,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/roba_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/roba_hue.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=50"},
		{"stunattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(infuriated_roba_protector, "infuriated_roba_protector")