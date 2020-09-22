noxious_finned_blaggart = Creature:new {
	objectName = "@mob/creature_names:noxious_finned_blaggart",
	socialGroup = "finned_blaggart",
	faction = "",
	level = 65,
	chanceHit = 1.5,
	damageMin = 510,
	damageMax = 670,
	baseXp = 7416,
	baseHAM = 12950,
	baseHAMmax = 16950,
	armor = 1,
	resists = {160,165,150,160,170,155,180,150,-1},
	meatType = "meat_reptilian",
	meatAmount = 70,
	hideType = "hide_scaley",
	hideAmount = 35,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.03,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/finned_blaggart.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_finned_blaggart.iff",
	scale = 1.6,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"blindattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(noxious_finned_blaggart, "noxious_finned_blaggart")
