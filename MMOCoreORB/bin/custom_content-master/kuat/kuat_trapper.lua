kuat_trapper = Creature:new {
	customName = "a Kuat trapper",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "poacher",
	faction = "thug",
	level = 65,
	chanceHit = 1.5,
	damageMin = 570,
	damageMax = 690,
	baseXp = 5916,
	baseHAM = 11750,
	baseHAMmax = 13750,
	armor = 1,
	resists = {150,145,140,155,155,145,155,35,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dazure_cabal_nikto_overseer_01.iff",
		"object/mobile/dazure_cabal_nikto_overseer_02.iff",
		"object/mobile/dressed_tatooine_spy_sarlis.iff",
		"object/mobile/dressed_bh_male_human_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "g_prowler_earring", chance = 500000},
			}
		}
	},
	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(fencermaster,marksmanmaster,tkamaster,brawlermaster,swordsmanmaster,pikemanmaster,riflemanmaster,bountyhuntermid)
}

CreatureTemplates:addCreatureTemplate(kuat_trapper, "kuat_trapper")
