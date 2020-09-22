pangrack = Creature:new {
	objectName = "@mob/creature_names:pangrack",
	socialGroup = "pangrack",
	faction = "",
	level = 48,
	chanceHit = 1,
	damageMin = 375,
	damageMax = 500,
	baseXp = 4743,
	baseHAM = 9950,
	baseHAMmax = 12950,
	armor = 1,
	resists = {145,155,35,140,140,145,175,140,-1},
	meatType = "meat_herbivore",
	meatAmount = 55,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 28,
	milkType = "milk_wild",
	milk = 140,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_pangrack.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_pangrack.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(pangrack, "pangrack")
