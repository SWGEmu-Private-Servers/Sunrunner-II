enraged_grizzok = Creature:new {

	customName = "an enraged grizzok",
	socialGroup = "grizzok",
	faction = "",
	level = 55,
	chanceHit = 1.25,
	damageMin = 480,
	damageMax = 610,
	baseXp = 5416,
	baseHAM = 11750,
	baseHAMmax = 14000,
	armor = 1,
	resists = {155,155,155,160,160,160,145,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_wooly",
	hideAmount = 60,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_boar.iff"},
	hues = { 12, 13, 14, 15, 16, 17, 18 },
	scale = 2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=75"},
		{"creatureareacombo","stateAccuracyBonus=75"}
	}
}


CreatureTemplates:addCreatureTemplate(enraged_grizzok, "enraged_grizzok")


