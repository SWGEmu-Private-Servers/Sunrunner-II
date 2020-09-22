mireclaw_swamp_prowler = Creature:new {
	objectName = "@mob/creature_names:mireclaw_swamp_prowler",
	socialGroup = "mireclaw",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 430,
	damageMax = 600,
	baseXp = 5985,
	baseHAM = 13000,
	baseHAMmax = 16000,
	armor = 1,
	resists = {155,160,155,150,165,150,200,150,-1},
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

	templates = {"object/mobile/beast_master/bm_mutated_varasquactyl.iff"},
	hues = { 8, 10, 12, 13, 14, 16, 17, 18, 19 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_varasquactyl.iff",
	scale = 1.9,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=75"},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(mireclaw_swamp_prowler, "mireclaw_swamp_prowler")

