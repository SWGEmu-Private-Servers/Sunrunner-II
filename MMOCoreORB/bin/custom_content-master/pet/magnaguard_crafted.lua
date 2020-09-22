magnaguard_crafted = Creature:new {
	objectName = "@mob/creature_names:magnaguard",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 179,
	damageMax = 186,
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
		"object/mobile/magnaguard.iff"
	},		
	lootGroups = {},
	defaultAttack = "attack",
	weapons = {"magnaguard_staff"},
	conversationTemplate = "",
	attacks = magnadroidpet
}

CreatureTemplates:addCreatureTemplate(magnaguard_crafted, "magnaguard_crafted")
