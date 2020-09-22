ep3_etyyy_chiss_poacher_hracca = Creature:new {
	customName = "a Chiss poacher",
	socialGroup = "chiss",
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 400,
	damageMax = 500,
	baseXp = 4500,
	baseHAM = 17000,
	baseHAMmax = 20000,
	armor = 2,
	resists = {70,70,70,30,30,0,0,-1,-1},
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
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_01.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_02.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_03.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_04.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_05.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_06.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_07.iff",
			"object/mobile/ep3/ep3_etyyy_chiss_poacher_hracca_08.iff"
		},
	lootGroups = {
			{
				groups = {
					{group = "g_modified_pistol_barrel", chance = 1000000},	
					{group = "junk", chance = 6000000},		
					{group = "rifles", chance = 1000000},	
					{group = "pistols", chance = 1000000},	
					{group = "carbines", chance = 1000000},
				}
			}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_chiss_poacher_hracca, "ep3_etyyy_chiss_poacher_hracca")
