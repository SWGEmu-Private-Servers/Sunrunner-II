bolotaur = Creature:new {
	objectName = "@mob/creature_names:bolotaur",
	socialGroup = "bolotaur",
	faction = "",
	level = 20,
	chanceHit = 1,
	damageMin = 150,
	damageMax = 200,
	baseXp = 2000,
	baseHAM = 4500,
	baseHAMmax = 5000,
	armor = 0,
	resists = {125,10,-1,120,115,5,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 125,
	hideType = "hide_scaley",
	hideAmount = 75,
	boneType = "bone_avian",
	boneAmount = 68,
	milkType = "",
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bolotaur.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/bolotaur.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(bolotaur, "bolotaur")
