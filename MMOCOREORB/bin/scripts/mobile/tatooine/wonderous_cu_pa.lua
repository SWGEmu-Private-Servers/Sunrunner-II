wonderous_cu_pa = Creature:new {
	objectName = "@mob/creature_names:cu_pa_wonderous",
	socialGroup = "cu_pa",
	faction = "",
	level = 14,
	chanceHit = 1.25,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1428,
	baseHAM = 2300,
	baseHAMmax = 2700,
	armor = 0,
	resists = {110,110,0,150,130,110,110,120,-1},
	meatType = "meat_reptilian",
	meatAmount = 430,
	hideType = "hide_bristley",
	hideAmount = 200,
	boneType = "bone_mammal",
	boneAmount = 230,
	milkType = "milk_wild",
	milk = 210,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/cu_pa_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/cu_pa_hue.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=100"},
		{"blindattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(wonderous_cu_pa, "wonderous_cu_pa")