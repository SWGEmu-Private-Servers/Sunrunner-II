uller_stoneclaw = Creature:new {
	customName = "an uller stoneclaw",
	socialGroup = "uller",
	level = 65,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 725,
	baseXp = 6288,
	baseHAM = 13500,
	baseHAMmax = 17000,
	armor = 1,
	resists = {155,160,140,145,15,150,30,140,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/uller.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(uller_stoneclaw, "uller_stoneclaw")
