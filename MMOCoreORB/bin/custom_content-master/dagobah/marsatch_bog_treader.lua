marsatch_bog_treader = Creature:new {
	objectName = "@mob/creature_names:marsatch_bog_treader",
	socialGroup = "marsatch",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 560,
	damageMax = 745,
	baseXp = 5830,
	baseHAM = 12950,
	baseHAMmax = 17200,
	armor = 1,
	resists = {155,165,150,155,160,150,170,155,-1},
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
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_narglatch.iff"},
	controlDeviceTemplate = "object/intangible/pet/beast_master/bm_mutated_narglatch.iff",
	scale = 1.6,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"knockdownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(marsatch_bog_treader, "marsatch_bog_treader")
