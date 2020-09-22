sharnaff_reckless_ravager = Creature:new {
	objectName = "@mob/creature_names:sharnaff_reckless_ravager",
	socialGroup = "sharnaff",
	faction = "",
	level = 34,
	chanceHit = 1.25,
	damageMin = 355,
	damageMax = 390,
	baseXp = 6920,
	baseHAM = 9500,
	baseHAMmax = 11500,
	armor = 1,
	resists = {155,150,160,140,150,160,150,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 900,
	hideType = "hide_scaley",
	hideAmount = 600,
	boneType = "bone_mammal",
	boneAmount = 360,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 8,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sharnaff_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/sharnaff_hue.iff",
	lootGroups = {
		{
			groups = {
				{group = "sharnaff_common", chance = 10000000}
			},
			lootChance = 5680000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=100"},
		{"knockdownattack","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(sharnaff_reckless_ravager, "sharnaff_reckless_ravager")