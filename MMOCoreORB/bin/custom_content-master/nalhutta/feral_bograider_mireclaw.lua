feral_bograider_mireclaw = Creature:new {
	customName = "a feral Bog Raider mireclaw",
	socialGroup = "mireclaw",
	faction = "",
	level = 95,
	chanceHit = 6,
	damageMin = 650,
	damageMax = 920,
	baseXp = 8815,
	baseHAM = 20000,
	baseHAMmax = 23500,
	armor = 1,
	resists = {160,165,145,140,155,150,200,140,-1},
	meatType = "meat_carnivore",
	meatAmount = 15,
	hideType = "hide_leathery",
	hideAmount = 55,
	boneType = "bone_mammal",
	boneAmount = 3,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_varasquactyl.iff"},
	scale = 1.7,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=75"},
		{"strongpoison","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(feral_bograider_mireclaw, "feral_bograider_mireclaw")

