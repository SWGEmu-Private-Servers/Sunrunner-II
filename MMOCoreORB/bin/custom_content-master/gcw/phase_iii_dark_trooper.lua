phase_iii_dark_trooper = Creature:new {
	customName = "a phase-III dark trooper",
	randomNameType = NAME_DARKTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 310,
	chanceHit = 30.5,
	damageMin = 2375,
	damageMax = 3075,
	baseXp = 21507,
	baseHAM = 343850,
	baseHAMmax = 411950,
	armor = 3,
	resists = {190,200,190,165,200,160,170,160,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/som/som_kenobi_reunite_dark_trooper.iff"
	},
	scale = 1.5,
	lootGroups = {},
	weapons = {"oneh_stun_baton"},
	conversationTemplate = "",
	attacks = merge(fencermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(phase_iii_dark_trooper, "phase_iii_dark_trooper")

