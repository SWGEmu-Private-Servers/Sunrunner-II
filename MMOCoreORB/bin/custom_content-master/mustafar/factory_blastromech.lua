factory_blastromech = Creature:new {
	customName = "a droid factory blastromech",
	socialGroup = "factory",
	faction = "",
	level = 134,
	chanceHit = 25.5,
	damageMin = 900,
	damageMax = 1150,
	baseXp = 12612,
	baseHAM = 42500,
	baseHAMmax = 60000,
	armor = 1,
	resists = {170,170,165,160,175,165,175,175,-1},
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

	templates = {"object/mobile/blastromech.iff"},
	lootGroups = {},

	conversationTemplate = "",

	defaultWeapon = "object/weapon/ranged/droid/droid_astromech_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(factory_blastromech, "factory_blastromech")
