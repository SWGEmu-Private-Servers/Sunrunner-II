varactyl_stalker = Creature:new {
	objectName = "@mob/creature_names:varactyl_stalker",
	socialGroup = "varactyl",
	level = 35,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 340,
	baseXp = 3500,
	baseHAM = 9000,
	baseHAMmax = 11000,
	armor = 0,
	resists = {140,125,15,-1,20,155,135,-1,-1},
	meatType = "meat_avian",
	meatAmount = 45,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	scale = 1.4,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_stalker, "varactyl_stalker")
