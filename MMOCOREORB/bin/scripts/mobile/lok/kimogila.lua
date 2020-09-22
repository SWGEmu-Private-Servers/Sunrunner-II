kimogila = Creature:new {
	objectName = "@mob/creature_names:kimogila",
	socialGroup = "kimogila",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 450,
	damageMax = 690,
	specialDamageMult = 2.5,
	baseXp = 6747,
	baseHAM = 17600,
	baseHAMmax = 21600,
	armor = 1,
	resists = {165,165,165,200,160,170,200,160,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 1000,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,


	templates = {"object/mobile/kimogila_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/kimogila_hue.iff",
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 0.85,
	lootGroups = {
	 {
	        groups = {
				{group = "kimogila_common", chance = 10000000}
			},
			lootChance = 2900000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(kimogila, "kimogila")