sk_support_droid = Creature:new {
	customName = "a SK-21 support droid",
	socialGroup = "hk47",
	faction = "",
	level = 100,
	chanceHit = 25.5,
	damageMin = 450,
	damageMax = 850,
	baseXp = 10549,
	baseHAM = 19500,
	baseHAMmax = 25500,
	armor = 1,
	resists = {160,150,140,140,150,145,200,140,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/som/hk77.iff"},
	scale = 0.9,
	lootGroups = {},
	weapons = {"ig106_weapons"},
	conversationTemplate = "",
	defaultAttack = "attack",
	attacks = {
		{"",""},

	}
}



CreatureTemplates:addCreatureTemplate(sk_support_droid, "sk_support_droid")


