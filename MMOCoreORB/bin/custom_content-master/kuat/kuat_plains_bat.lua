kuat_plains_bat = Creature:new {
	objectName = "@mob/creature_names:kuat_plains_bat",
	socialGroup = "kuatplainsbat",
	faction = "",
	level = 48,
	chanceHit = 1,
	damageMin = 375,
	damageMax = 500,
	baseXp = 4743,
	baseHAM = 9850,
	baseHAMmax = 12850,
	armor = 1,
	resists = {145,155,35,140,140,145,175,140,-1},
	meatType = "meat_herbivore",
	meatAmount = 50,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 26,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	diet = HERBIVORE,


	templates = {"object/mobile/gackle_bat_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 25, 26, 28 },
	controlDeviceTemplate = "object/intangible/pet/gackle_bat_hue.iff",
	scale = 3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(kuat_plains_bat, "kuat_plains_bat")

