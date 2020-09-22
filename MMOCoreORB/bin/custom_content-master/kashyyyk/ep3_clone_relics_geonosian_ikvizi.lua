ep3_clone_relics_geonosian_ikvizi = Creature:new {
	customName = "Ikvizi",
	socialGroup = "townsperson",
	faction = "",
	level = 30,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1609,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {10,10,10,10,10,10,10,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_clone_relics_geonosian_ikvizi.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "ikviziConvoTemplate"
}

CreatureTemplates:addCreatureTemplate(ep3_clone_relics_geonosian_ikvizi, "ep3_clone_relics_geonosian_ikvizi")
