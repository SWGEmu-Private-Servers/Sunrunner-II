sherkar_pet = Creature:new {
	objectName = "@mob/creature_names:sherkarmini",
	socialGroup = "sherkar",
	faction = "",
	level = 8,
	chanceHit = 1,
	damageMin = 115,
	damageMax = 175,
	baseXp = 40,
	baseHAM = 3500,
	baseHAMmax = 4500,
	armor = 0,
	resists = {5,5,5,5,5,5,5,5,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/sher_kar.iff"},
	scale = 0.07,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(sherkar_pet, "sherkar_pet")
