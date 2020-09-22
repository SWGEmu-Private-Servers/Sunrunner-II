sharnaff_bull = Creature:new {
	objectName = "@mob/creature_names:sharnaff_bull",
	socialGroup = "sharnaff",
	faction = "",
	level = 40,
	chanceHit = 1.5,
	damageMin = 345,
	damageMax = 440,
	baseXp = 3915,
	baseHAM = 9400,
	baseHAMmax = 12000,
	armor = 1,
	resists = {160,145,160,150,150,150,140,145,-1},
	meatType = "meat_carnivore",
	meatAmount = 482,
	hideType = "hide_scaley",
	hideAmount = 335,
	boneType = "bone_mammal",
	boneAmount = 200,
	milk = 0,
	tamingChance = 0.1,
	ferocity = 8,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/sharnaff_bull.iff"},
	controlDeviceTemplate = "object/intangible/pet/sharnaff_hue.iff",
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	lootGroups = {
		{
			groups = {
				{group = "sharnaff_common", chance = 10000000}
			},
			lootChance = 5760000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack","stateAccuracyBonus=50"},
		{"knockdownattack","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(sharnaff_bull, "sharnaff_bull")

