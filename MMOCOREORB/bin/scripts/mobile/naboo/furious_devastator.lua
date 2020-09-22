furious_devastator = Creature:new {
	objectName = "@mob/creature_names:fambaa_furious_devastator",
	socialGroup = "fambaa",
	faction = "",
	level = 40,
	chanceHit = 1.25,
	damageMin = 405,
	damageMax = 500,
	baseXp = 10500,
	baseHAM = 11000,
	baseHAMmax = 13600,
	armor = 1,
	resists = {165,150,180,150,160,160,150,150,-1},
	meatType = "meat_reptilian",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "bone_mammal",
	boneAmount = 1000,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/fambaa_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/fambaa_hue.iff",
	scale = 1.3,
	lootGroups = {
	 {
	        groups = {
				{group = "fambaa_common", chance = 10000000}
			},
			lootChance = 1760000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack","stateAccuracyBonus=100"},
		{"posturedownattack","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(furious_devastator, "furious_devastator")