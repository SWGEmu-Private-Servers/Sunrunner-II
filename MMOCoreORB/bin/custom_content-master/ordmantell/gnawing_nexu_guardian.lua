gnawing_nexu_guardian = Creature:new {
	objectName = "@mob/creature_names:gnawing_nexu_guardian",
	socialGroup = "nexu",
	faction = "",
	level = 87,
	chanceHit = 5,
	damageMin = 655,
	damageMax = 810,
	baseXp = 8023,
	baseHAM = 18750,
	baseHAMmax = 23500,
	armor = 1,
	resists = {170,165,160,165,175,165,190,160,-1},
	meatType = "meat_carnivore",
	meatAmount = 90,
	hideType = "hide_bristley",
	hideAmount = 55,
	boneType = "bone_mammal",
	boneAmount = 65,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_nexu.iff"},
	scale = 1.75,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=80"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(gnawing_nexu_guardian, "gnawing_nexu_guardian")
