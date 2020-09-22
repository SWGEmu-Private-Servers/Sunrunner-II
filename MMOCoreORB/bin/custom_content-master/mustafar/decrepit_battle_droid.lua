decrepit_battle_droid = Creature:new {
	customName = "a decrepit battle droid",
	socialGroup = "decrepit",
	faction = "",
	level = 134,
	chanceHit = 25.5,
	damageMin = 750,
	damageMax = 1200,
	baseXp = 12612,
	baseHAM = 42000,
	baseHAMmax = 54000,
	armor = 2,
	resists = {165,165,190,150,190,15,30,175,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 1.10,

	templates = {"object/mobile/battle_droid.iff"},
	lootGroups = {},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)

}

CreatureTemplates:addCreatureTemplate(decrepit_battle_droid, "decrepit_battle_droid")

