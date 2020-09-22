nexu_cub = Creature:new {
	objectName = "@mob/creature_names:nexu_cub",
	socialGroup = "nexu",
	faction = "",
	level = 52,
	chanceHit = 1,
	damageMin = 345,
	damageMax = 510,
	baseXp = 4363,
	baseHAM = 9230,
	baseHAMmax = 11700,
	armor = 1,
	resists = {150,150,145,150,165,150,155,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 30,
	hideType = "hide_bristley",
	hideAmount = 20,
	boneType = "bone_mammal",
	boneAmount = 15,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_nexu.iff"},
	scale = 0.75,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison","stateAccuracyBonus=25"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(nexu_cub, "nexu_cub")
