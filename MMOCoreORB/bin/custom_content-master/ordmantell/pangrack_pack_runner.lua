pangrack_pack_runner = Creature:new {
	objectName = "@mob/creature_names:pangrack_pack_runner",
	socialGroup = "pangrack",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 425,
	damageMax = 550,
	baseXp = 5043,
	baseHAM = 10350,
	baseHAMmax = 13350,
	armor = 1,
	resists = {155,155,40,145,150,175,175,145,-1},
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
	creatureBitmask = PACK + HERD,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_pangrack.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_pangrack.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=50"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(pangrack_pack_runner, "pangrack_pack_runner")
