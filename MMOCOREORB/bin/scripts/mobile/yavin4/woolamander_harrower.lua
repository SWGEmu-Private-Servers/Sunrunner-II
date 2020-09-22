woolamander_harrower = Creature:new {
	objectName = "@mob/creature_names:woolamander_harrower",
	socialGroup = "woolamander",
	faction = "",
	level = 50,
	chanceHit = 1.5,
	damageMin = 400,
	damageMax = 510,
	baseXp = 5007,
	baseHAM = 11500,
	baseHAMmax = 14500,
	armor = 1,
	resists = {155,155,165,160,160,160,145,150,-1},
	meatType = "meat_carnivore",
	meatAmount = 20,
	hideType = "hide_wooly",
	hideAmount = 200,
	boneType = "bone_mammal",
	boneAmount = 20,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/woolamander_hue.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	controlDeviceTemplate = "object/intangible/pet/woolamander_hue.iff",
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "harrower_bone", chance = 10000000}
			},
			lootChance = 2020000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack","stateAccuracyBonus=75"},
		{"creatureareapoison","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(woolamander_harrower, "woolamander_harrower")