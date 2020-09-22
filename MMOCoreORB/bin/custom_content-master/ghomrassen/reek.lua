reek = Creature:new {
	objectName = "@mob/creature_names:reek",
	socialGroup = "reek",
	faction = "",
	level = 60,
	chanceHit = 1.5,
	damageMin = 450,
	damageMax = 620,
	baseXp = 6105,
	baseHAM = 13500,
	baseHAMmax = 17500,
	armor = 1,
	resists = {160,160,155,175,150,155,180,155,-1},
	meatType = "meat_carnivore",
	meatAmount = 500,
	hideType = "hide_leathery",
	hideAmount = 430,
	boneType = "bone_mammal",
	boneAmount = 330,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_reek.iff"},
	--hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_reek.iff",
	scale = 1.1,
	lootGroups = {
	 {
	        groups = {
				{group = "g_reek_pelt", chance = 10000000},
			},
			lootChance = 4500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(reek, "reek")
