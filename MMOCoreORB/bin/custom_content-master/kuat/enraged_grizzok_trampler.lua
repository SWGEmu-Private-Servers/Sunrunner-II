enraged_grizzok_trampler = Creature:new {

	customName = "an enraged grizzok trampler",
	socialGroup = "grizzok",
	faction = "",
	level = 60,
	chanceHit = 1.25,
	damageMin = 550,
	damageMax = 680,
	baseXp = 6016,
	baseHAM = 12750,
	baseHAMmax = 15800,
	armor = 1,
	resists = {155,160,155,160,160,160,145,150,-1},
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
	hues = { 13, 14, 15, 16, 17, 18, 19 },
	scale = 2.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=75"}
	}

}


CreatureTemplates:addCreatureTemplate(enraged_grizzok_trampler, "enraged_grizzok_trampler")


