varactyl_deathspine = Creature:new {
	objectName = "@mob/creature_names:varactyl_deathspine",
	socialGroup = "varactyl",
	level = 50,
	chanceHit = 1,
	damageMin = 300,
	damageMax = 485,
	baseXp = 4916,
	baseHAM = 10500,
	baseHAMmax = 13500,
	armor = 1,
	resists = {150,145,135,30,35,155,145,25,-1},
	meatType = "meat_avian",
	meatAmount = 45,
	hideType = "hide_scaley",
	hideAmount = 40,
	boneType = "bone_avian",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/varactyl.iff"},
	scale = 1.8,
	lootGroups = {},
	weapons = {},
	attacks = {
		{"intimidationattack",""},
		{"mediumpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_deathspine, "varactyl_deathspine")
