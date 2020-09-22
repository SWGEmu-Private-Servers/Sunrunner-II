bogwing_prowler = Creature:new {
	objectName = "@mob/creature_names:bogwing_prowler",
	socialGroup = "bogwing",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 425,
	damageMax = 510,
	baseXp = 4934,
	baseHAM = 10700,
	baseHAMmax = 13500,
	armor = 1,
	resists = {150,150,145,40,40,150,175,35,-1},
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
	scale = 0.6,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(bogwing_prowler, "bogwing_prowler")
