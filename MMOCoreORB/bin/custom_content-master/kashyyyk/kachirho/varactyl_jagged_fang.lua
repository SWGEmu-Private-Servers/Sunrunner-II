varactyl_jagged_fang = Creature:new {
	objectName = "@mob/creature_names:varactyl_jagged_fang",
	socialGroup = "varactyl",
	level = 60,
	chanceHit = 1,
	damageMin = 450,
	damageMax = 750,
	baseXp = 5830,
	baseHAM = 18500,
	baseHAMmax = 25000,
	armor = 1,
	resists = {160,165,160,35,150,140,190,150,-1},
	meatType = "meat_avian",
	meatAmount = 45,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	scale = 3,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"mediumpoison",""},
		{"creatureareacombo",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_jagged_fang, "varactyl_jagged_fang")
