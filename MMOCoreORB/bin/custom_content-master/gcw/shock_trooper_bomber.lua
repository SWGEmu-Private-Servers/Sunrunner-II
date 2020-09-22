shock_trooper_bomber = Creature:new {
	customName = "a shock trooper bomber",
	randomNameType = NAME_DARKTROOPER,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 270,
	chanceHit = 15.5,
	damageMin = 1555,
	damageMax = 2025,
	baseXp = 19507,
	baseHAM = 190850,
	baseHAMmax = 231950,
	armor = 3,
	resists = {175,160,170,200,155,170,200,150,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/npc_dressed_npe_commando.iff"
	},
	scale = 1.15,
	lootGroups = {},
	weapons = {"heavy_lava_cannon"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(commandomaster,marksmanmaster,tkamaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(shock_trooper_bomber, "shock_trooper_bomber")

