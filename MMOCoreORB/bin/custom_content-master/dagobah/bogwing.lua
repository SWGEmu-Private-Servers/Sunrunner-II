bogwing = Creature:new {
	objectName = "@mob/creature_names:bogwing",
	socialGroup = "bogwing",
	faction = "",
	level = 48,
	chanceHit = 1,
	damageMin = 375,
	damageMax = 470,
	baseXp = 4734,
	baseHAM = 9700,
	baseHAMmax = 12000,
	armor = 1,
	resists = {145,150,140,30,30,145,175,25,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.15,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_kai_tok.iff"},
	controlDeviceTemplate = "object/intangible/pet/kai_tok_hue.iff",
	scale = 0.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(bogwing, "bogwing")
