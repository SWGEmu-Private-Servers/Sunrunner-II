rebreather_questgiver_npc = Creature:new {
	customName = "Ordell Robbi (a bio-engineer)",
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
	optionsBitmask = AIENABLED + INTERESTING + CONVERSABLE,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_doctor_trainer_moncal_male_01.iff"},				
	lootGroups = {},
	weapons = {},
	conversationTemplate = "rebreatherQuestgiverConvoTemplate", 
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(rebreather_questgiver_npc, "rebreather_questgiver_npc")
