savage_winged_mawrat_shredder = Creature:new {
	objectName = "@mob/creature_names:savage_winged_mawrat_shredder",
	socialGroup = "mawrat",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 430,
	damageMax = 600,
	baseXp = 5985,
	baseHAM = 13150,
	baseHAMmax = 15650,
	armor = 1,
	resists = {160,160,150,155,160,165,180,150,-1},
	meatType = "meat_wild",
	meatAmount = 50,
	hideType = "hide_scaley",
	hideAmount = 50,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_quenker.iff"},
	hues = { 12, 13, 14, 15, 16, 17, 18, 19 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_quenker.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=50"},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(savage_winged_mawrat_shredder, "savage_winged_mawrat_shredder")
