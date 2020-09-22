ep3_kachirho_chiss_villager = Creature:new {
	customName = "Chiss poacher",
	socialGroup = "chiss",
	faction = "",
	level = 30,
	chanceHit = 0.33,
	damageMin = 180,
	damageMax = 190,
	baseXp = 1609,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 1,
	resists = {30,30,0,0,0,0,0,-1,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_01.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_02.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_03.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_04.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_05.iff"
	},
	lootGroups = {},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_kachirho_chiss_villager, "ep3_kachirho_chiss_villager")
