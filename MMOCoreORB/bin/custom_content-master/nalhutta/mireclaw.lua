mireclaw = Creature:new {
	objectName = "@mob/creature_names:mireclaw",
	socialGroup = "mireclaw",
	faction = "",
	level = 40,
	chanceHit = 1,
	damageMin = 350,
	damageMax = 415,
	baseXp = 3915,
	baseHAM = 9200,
	baseHAMmax = 11800,
	armor = 1,
	resists = {140,135,20,15,25,30,165,10,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 55,
	boneType = "bone_mammal",
	boneAmount = 3,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_varasquactyl.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_varasquactyl.iff",
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=25"},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(mireclaw, "mireclaw")

