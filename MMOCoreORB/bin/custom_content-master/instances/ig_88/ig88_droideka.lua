ig88_droideka = Creature:new {
	customName = "IG-88's droideka",
	socialGroup = "ig88",
	faction = "",
	level = 134,
	chanceHit = 30.5,
	damageMin = 850,
	damageMax = 1450,
	baseXp = 12612,
	baseHAM = 36000,
	baseHAMmax = 48000,
	armor = 2,
	resists = {175,200,170,50,200,45,200,185,-1},
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
		"object/mobile/droideka.iff"
	},
	lootGroups = {
	},
	defaultAttack = "pointblankarea2",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(ig88_droideka, "ig88_droideka")
