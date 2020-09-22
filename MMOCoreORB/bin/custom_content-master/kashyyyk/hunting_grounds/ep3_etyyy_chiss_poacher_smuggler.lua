ep3_etyyy_chiss_poacher_smuggler = Creature:new {
	customName = "a chiss poacher smuggler",
	randomNameType = NAME_GENERIC_TAG,
	randomNameTag = true,
	faction = "",
	level = 45,
	chanceHit = 0.45,
	damageMin = 300,
	damageMax = 550,
	baseXp = 1609,
	baseHAM = 8000,
	baseHAMmax = 9000,
	armor = 1,
	resists = {40,40,10,10,10,10,10,-1,-1},
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
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_smuggler_01.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_smuggler_02.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_smuggler_03.iff",
		"object/mobile/ep3/ep3_etyyy_chiss_poacher_smuggler_04.iff"
		},
		lootGroups = {
			{
				groups = {
					{group = "junk", chance = 3500000},
					{group = "wearables_rare", chance = 250000},
					{group = "g_modified_pistol_barrel", chance = 250000},
					{group = "rifles", chance = 2000000},
					{group = "melee_weapons", chance = 2000000},
					{group = "armor_attachments", chance = 2000000},
				}
			}
		},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_etyyy_chiss_poacher_smuggler, "ep3_etyyy_chiss_poacher_smuggler")