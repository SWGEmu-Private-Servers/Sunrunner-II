factory_assassin_droid = Creature:new {
	customName = "a droid factory assassin droid",
	socialGroup = "factory",
	faction = "",
	level = 134,
	chanceHit = 25.5,
	damageMin = 950,
	damageMax = 1350,
	baseXp = 12612,
	baseHAM = 44500,
	baseHAMmax = 61500,
	armor = 1,
	resists = {170,170,165,160,175,155,175,175,-1},
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
	scale = 1.2,

	templates = {"object/mobile/ig_assassin_droid.iff"},
	lootGroups = {},

	conversationTemplate = "",

	defaultweapon =	"object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "attack"
}

CreatureTemplates:addCreatureTemplate(factory_assassin_droid, "factory_assassin_droid")
