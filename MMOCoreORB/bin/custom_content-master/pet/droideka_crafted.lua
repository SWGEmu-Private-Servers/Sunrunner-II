droideka_crafted = Creature:new {
	objectName = "@mob/creature_names:droideka",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 169,
	damageMax = 176,
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

	templates = {"object/mobile/droideka.iff"},
    	lootGroups = {    },
		defaultAttack = "creaturerangedattack",
		defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
		conversationTemplate = "",
		attacks = droidekapet
}

CreatureTemplates:addCreatureTemplate(droideka_crafted, "droideka_crafted")
