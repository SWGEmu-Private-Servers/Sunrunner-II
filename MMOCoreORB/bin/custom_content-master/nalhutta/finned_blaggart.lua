finned_blaggart = Creature:new {
	objectName = "@mob/creature_names:finned_blaggart",
	socialGroup = "finned_blaggart",
	faction = "",
	level = 50,
	chanceHit = 1,
	damageMin = 380,
	damageMax = 480,
	baseXp = 4916,
	baseHAM = 9750,
	baseHAMmax = 12000,
	armor = 1,
	resists = {150,145,135,30,140,155,170,20,-1},
	meatType = "meat_reptilian",
	meatAmount = 10,
	hideType = "hide_scaley",
	hideAmount = 5,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/finned_blaggart.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_finned_blaggart.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"blindattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(finned_blaggart, "finned_blaggart")

