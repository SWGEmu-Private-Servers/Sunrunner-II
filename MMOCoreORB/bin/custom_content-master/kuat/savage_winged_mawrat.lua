savage_winged_mawrat = Creature:new {
	objectName = "@mob/creature_names:savage_winged_mawrat",
	socialGroup = "mawrat",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 400,
	damageMax = 530,
	baseXp = 5373,
	baseHAM = 10250,
	baseHAMmax = 12750,
	armor = 1,
	resists = {155,155,35,145,140,160,170,30,-1},
	meatType = "meat_wild",
	meatAmount = 50,
	hideType = "hide_scaley",
	hideAmount = 50,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_quenker.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_quenker.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"strongdisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(savage_winged_mawrat, "savage_winged_mawrat")
