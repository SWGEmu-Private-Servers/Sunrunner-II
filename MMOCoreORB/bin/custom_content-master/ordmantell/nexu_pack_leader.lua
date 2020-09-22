nexu_pack_leader = Creature:new {
	objectName = "@mob/creature_names:nexu_pack_leader",
	socialGroup = "nexu",
	faction = "",
	level = 105,
	chanceHit = 10,
	damageMin = 775,
	damageMax = 945,
	baseXp = 9053,
	baseHAM = 38750,
	baseHAMmax = 43750,
	armor = 1,
	resists = {180,175,170,175,185,175,200,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 100,
	hideType = "hide_bristley",
	hideAmount = 65,
	boneType = "bone_mammal",
	boneAmount = 65,
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_nexu.iff"},
	scale = 2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=80"},
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=75"},
		{"creatureareaattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(nexu_pack_leader, "nexu_pack_leader")
