me_sickly_womp_rat = Creature:new {
	objectName = "@mob/creature_names:me_sickly_womprat",
	socialGroup = "rat",
	faction = "",
	level = 10,
	chanceHit = 0.28,
	damageMin = 110,
	damageMax = 140,
	baseXp = 365,
	baseHAM = 810,
	baseHAMmax = 990,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_wild",
	meatAmount = 12,
	hideType = "hide_leathery",
	hideAmount = 12,
	boneType = "bone_mammal",
	boneAmount = 12,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/womp_rat.iff"},
	controlDeviceTemplate = "object/intangible/pet/womp_rat_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(me_sickly_womp_rat, "me_sickly_womp_rat")
