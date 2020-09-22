minstyngar = Creature:new {
	objectName = "@monster_name:minstyngar",
	socialGroup = "minstyngar",
	faction = "",
	level = 45,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 450,
	baseXp = 4500,
	baseHAM = 10000,
	baseHAMmax = 12000,
	armor = 1,
	resists = {145,30,25,10,-1,140,140,160,-1},
	meatType = "meat_herbivore",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 276,
	boneType = "bone_mammal",
	boneAmount = 301,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 5,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/minstyngar.iff"},
	controlDeviceTemplate = "object/intangible/pet/minstyngar.iff",
	lootGroups = {},
	weapons = {},

	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},	
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(minstyngar, "minstyngar")
