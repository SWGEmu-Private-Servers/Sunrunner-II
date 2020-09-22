union_sentry_droid_crafted = Creature:new {
	customName = "Union Sentry Droid",
	--objectName = "",
	--randomNameType = NAME_GENERIC_TAG,
	socialGroup = "townsperson",
	faction = "",
	level = 100,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 1000,
	baseXp = 9429,
	baseHAM = 44000,
	baseHAMmax = 60000,
	armor = 0,
	resists = {0,0,0,0,0,0,0,0,-1},
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
	diet = HERBIVORE,

	templates = {"object/mobile/union_sentry_droid_crafted.iff"},
	lootGroups = {},
	weapons = {"sentrydroid_weapons"},
	conversationTemplate = "",
	attacks = merge(marksmanmaster,pistoleernovice)
}

CreatureTemplates:addCreatureTemplate(union_sentry_droid_crafted, "union_sentry_droid_crafted")

