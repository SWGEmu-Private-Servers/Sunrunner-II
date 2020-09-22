cohenpa = Creature:new {
	objectName = "@mob/creature_names:cohenpa",
	socialGroup = "cohenpa",
	faction = "",
	level = 30,
	chanceHit = 1,
	damageMin = 260,
	damageMax = 340,
	baseXp = 3005,
	baseHAM = 7450,
	baseHAMmax = 9050,
	armor = 0,
	resists = {145,135,15,-1,15,10,25,140,-1},
	meatType = "meat_reptilian",
	meatAmount = 230,
	hideType = "hide_bristley",
	hideAmount = 130,
	boneType = "bone_mammal",
	boneAmount = 130,
	milkType = "milk_wild",
	milk = 110,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_cu_pa.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_cu_pa.iff",
	scale = 1.15,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=25"},
		{"stunattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(cohenpa, "cohenpa")

