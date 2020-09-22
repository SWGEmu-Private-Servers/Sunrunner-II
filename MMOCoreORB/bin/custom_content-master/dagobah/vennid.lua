vennid = Creature:new {
	objectName = "@mob/creature_names:vennid",
	socialGroup = "vennid",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 480,
	damageMax = 580,
	baseXp = 5373,
	baseHAM = 11300,
	baseHAMmax = 14000,
	armor = 1,
	resists = {150,155,150,40,150,160,180,140,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.08,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_spiderclan_queen.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_spiderclan_queen.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"intimidationattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(vennid, "vennid")
