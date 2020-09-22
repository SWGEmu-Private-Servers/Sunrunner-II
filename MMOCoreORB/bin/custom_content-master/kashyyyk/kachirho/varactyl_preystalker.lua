varactyl_preystalker = Creature:new {
	objectName = "@mob/creature_names:varactyl_preystalker",
	socialGroup = "varactyl",
	level = 45,
	chanceHit = 1,
	damageMin = 280,
	damageMax = 425,
	baseXp = 4461,
	baseHAM = 9500,
	baseHAMmax = 12500,
	armor = 1,
	resists = {145,135,25,10,35,155,135,10,-1},
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
	scale = 1.6,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"blindattack",""},
		{"mediumpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_preystalker, "varactyl_preystalker")
