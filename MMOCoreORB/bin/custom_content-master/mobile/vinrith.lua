vinrith = Creature:new {
	customName = "Vin'rith",
	socialGroup = "exar",
	faction = "",
	level = 173,
	chanceHit = 20.5,
	damageMin = 920,
	damageMax = 1400,
	baseXp = 16411,
	baseHAM = 105000,
	baseHAMmax = 135000,
	armor = 2,
	resists = {165,175,160,150,170,180,200,155,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gackle_bat.iff"},
	scale = 2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=50"},
		{"strongdisease","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(vinrith, "vinrith")
