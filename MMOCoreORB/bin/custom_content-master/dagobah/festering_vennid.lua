festering_vennid = Creature:new {
	objectName = "@mob/creature_names:festering_vennid",
	socialGroup = "vennid",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 550,
	damageMax = 670,
	baseXp = 5973,
	baseHAM = 13300,
	baseHAMmax = 16050,
	armor = 1,
	resists = {155,160,155,150,165,160,185,150,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_spiderclan_queen.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_spiderclan_queen.iff",
	scale = 1.4,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"strongdisease","stateAccuracyBonus=50"},
		{"intimidationattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(festering_vennid, "festering_vennid")
