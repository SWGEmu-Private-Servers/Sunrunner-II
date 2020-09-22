atpt_special = Creature:new {
	objectName = "@mob/creature_names:at_pt",
	socialGroup = "walker",
	faction = "walker",
	level = 300,
	chanceHit = 14.75,
	damageMin = 1,
	damageMax = 1,
	baseXp = 11859,
	baseHAM = 35000,
	baseHAMmax = 60000,
	armor = 3,
	resists = {90,90,-1,90,90,90,90,90,90},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = COMBATVEHICLE,
	creatureBitmask = NONE,
	optionsBitmask = INVULNERABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/atpt.iff"},
	lootGroups = {},
	conversationTemplate = "",

}

CreatureTemplates:addCreatureTemplate(atpt_special, "atpt_special")
