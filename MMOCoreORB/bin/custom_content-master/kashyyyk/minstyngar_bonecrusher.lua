minstyngar_bonecrusher = Creature:new {
	objectName = "@mob/creature_names:minstyngar_bonecrusher",
	socialGroup = "minstyngar",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 450,
	damageMax = 620,
	baseXp = 6105,
	baseHAM = 13500,
	baseHAMmax = 16500,
	armor = 1,
	resists = {165,160,155,150,160,170,150,160,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 55,
	boneType = "bone_mammal",
	boneAmount = 3,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_minstyngar.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_minstyngar.iff",
	scale = 1.3,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(minstyngar_bonecrusher, "minstyngar_bonecrusher")


