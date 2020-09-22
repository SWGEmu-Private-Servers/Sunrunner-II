battle_droid_crafted = Creature:new {
	objectName = "@mob/creature_names:battle_droid",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 159,
	damageMax = 166,
	baseXp = 0,
	baseHAM = 3000,
	baseHAMmax = 3200,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	scale = 1.15,
	templates = {
		"object/mobile/battle_droid.iff"
	},		
	lootGroups = {},
	defaultAttack = "creaturerangedattack",	
	weapons = {"battle_droid_e5"},
	conversationTemplate = "",
	attacks = battledroidpet
}

CreatureTemplates:addCreatureTemplate(battle_droid_crafted, "battle_droid_crafted")
