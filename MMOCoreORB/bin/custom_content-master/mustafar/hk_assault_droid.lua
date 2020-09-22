hk_assault_droid = Creature:new {
	customName = "a HK-77 assault droid",
	socialGroup = "hk47",
	faction = "",
	level = 120,
	chanceHit = 35.5,
	damageMin = 525,
	damageMax = 875,
	baseXp = 12549,
	baseHAM = 28500,
	baseHAMmax = 35500,
	armor = 1,
	resists = {170,175,150,145,155,150,200,150,-1},
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
	scale = 1,
	lootGroups = {},
	weapons = {"ig106_weapons"},
	conversationTemplate = "",
	defaultAttack = "attack",
	attacks = {
		{"",""},
	}
}



CreatureTemplates:addCreatureTemplate(hk_assault_droid, "hk_assault_droid")

