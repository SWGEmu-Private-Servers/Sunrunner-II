horned_raptor_stalker = Creature:new {
	objectName = "@mob/creature_names:horned_raptor_stalker",
	socialGroup = "horned_raptor",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 475,
	damageMax = 600,
	specialDamageMult = 3,
	baseXp = 5516,
	baseHAM = 10950,
	baseHAMmax = 13250,
	armor = 1,
	resists = {160,160,145,150,145,160,155,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 70,
	hideType = "hide_leathery",
	hideAmount = 60,
	boneType = "bone_avian",
	boneAmount = 60,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_griffon.iff"},
	hues = { 0, 1, 4, 13, 14, 17, 18, 19 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_griffon.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"posturedownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(horned_raptor_stalker, "horned_raptor_stalker")

