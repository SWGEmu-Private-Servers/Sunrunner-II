jundak_eviscerator = Creature:new {
	objectName = "@mob/creature_names:jundak_eviscerator",
	socialGroup = "jundak",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 430,
	damageMax = 600,
	baseXp = 5985,
	baseHAM = 13200,
	baseHAMmax = 16700,
	armor = 1,
	resists = {160,160,155,200,145,150,180,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 55,
	boneType = "bone_mammal",
	boneAmount = 3,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_jundak.iff"},
	hues = { 16, 17, 23, 24, 29, 31, 32, 42, 44, 51 },
	controlDeviceTemplate = "object/intangible/beast/bm_jundak.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"knockdownattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(jundak_eviscerator, "jundak_eviscerator")

