tuskolle = Creature:new {
	objectName = "@mob/creature_names:tuskolle",
	socialGroup = "tuskolle",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 430,
	baseXp = 3915,
	baseHAM = 9150,
	baseHAMmax = 11800,
	armor = 1,
	resists = {155,150,145,140,140,10,25,20,-1},
	meatType = "meat_herbivore",
	meatAmount = 470,
	hideType = "hide_leathery",
	hideAmount = 320,
	boneType = "bone_mammal",
	boneAmount = 200,
	milkType = "milk_wild",
	milk = 135,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_bolle_bol.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_bolle_bol.iff",
	scale = 1.1,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(tuskolle, "tuskolle")
