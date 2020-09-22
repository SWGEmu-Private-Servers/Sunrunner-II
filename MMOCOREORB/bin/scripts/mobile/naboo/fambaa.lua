fambaa = Creature:new {
	objectName = "@mob/creature_names:fambaa",
	socialGroup = "fambaa",
	faction = "",
	level = 55,
	chanceHit = 1.5,
	damageMin = 340,
	damageMax = 520,
	baseXp = 5281,
	baseHAM = 10000,
	baseHAMmax = 13500,
	armor = 1,
	resists = {150,145,140,25,165,165,25,135,-1},
	meatType = "meat_reptilian",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 750,
	boneType = "bone_mammal",
	boneAmount = 675,
	milkType = "milk_wild",
	milk = 400,
	tamingChance = 0.1,
	ferocity = 7,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/fambaa_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/fambaa_hue.iff",
	scale = 1,	
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },

	lootGroups = {
		{
			groups = {
				{group = "fambaa_common", chance = 10000000}
			},
			lootChance = 4680000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(fambaa, "fambaa")
