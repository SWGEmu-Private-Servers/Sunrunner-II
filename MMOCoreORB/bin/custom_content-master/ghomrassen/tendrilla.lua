tendrilla = Creature:new {
	objectName = "@mob/creature_names:tendrilla",
	socialGroup = "tendrilla",
	faction = "",
	level = 55,
	chanceHit = 1,
	damageMin = 415,
	damageMax = 540,
	baseXp = 5373,
	baseHAM = 10700,
	baseHAMmax = 13400,
	armor = 1,
	resists = {155,160,155,140,150,35,140,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_malkloc.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_malkloc.iff",
	scale = 1.05,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=25"},
		{"creatureareaknockdown","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(tendrilla, "tendrilla")

