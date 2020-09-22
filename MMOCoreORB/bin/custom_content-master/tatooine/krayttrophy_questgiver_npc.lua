krayttrophy_questgiver_npc = Creature:new {
	customName = "Esoqq (a Krayt hunter)",
	--randomNameType = NAME_GENERIC,
	--randomNameTag = true,
	socialGroup = "townsperson",
	faction = "townsperson",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 62,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {15,15,15,15,15,15,15,-1,-1},
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
	optionsBitmask = AIENABLED,
	--optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_cobral_runner_trandoshan_male_01.iff"},				
	lootGroups = {},
	weapons = {},
	conversationTemplate = "", 
	--conversationTemplate = "krayttrophyQuestgiverConvoTemplate", 
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(krayttrophy_questgiver_npc, "krayttrophy_questgiver_npc")
