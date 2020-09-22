ig88_battle_droid = Creature:new {
	customName = "IG-88's battle droid",
	socialGroup = "ig88",
	faction = "",
	level = 134,
	chanceHit = 25.5,
	damageMin = 950,
	damageMax = 1600,
	baseXp = 12612,
	baseHAM = 36000,
	baseHAMmax = 48000,
	armor = 2,
	resists = {175,175,200,50,200,25,200,185,-1},
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
	scale = 1.15,

	templates = {
		"object/mobile/battle_droid.iff"
	},
	lootGroups = {
	},
	weapons = {},
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"dizzyattack","stateAccuracyBonus=100"},
		{"creatureareaattack","stateAccuracyBonus=100"},
	}
}

CreatureTemplates:addCreatureTemplate(ig88_battle_droid, "ig88_battle_droid")
