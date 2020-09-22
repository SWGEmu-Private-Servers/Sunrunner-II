mustafarian_salvage_bandit = Creature:new {
	objectName = "@mob/creature_names:salvage_bandit",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mustafarianbandit",
	faction = "",
	level = 65,
	chanceHit = 5.5,
	damageMin = 680,
	damageMax = 810,
	baseXp = 5820,
	baseHAM = 13250,
	baseHAMmax = 16050,
	armor = 1,
	resists = {155,165,150,180,145,150,40,155,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/must_salvage_bandit_01.iff"},
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1900000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "borvos_common", chance = 1000000},
				{group = "flail_common", chance = 2000000},
				{group = "g_ddf_key", chance = 25000},
				{group = "g_orf_key", chance = 25000},
				{group = "g_wdf_key", chance = 25000},
				{group = "g_power_plant_lava_skiff", chance = 25000},
			}
		}
	},
	weapons = {"strider_brute_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,pikemanmaster,fencermaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(mustafarian_salvage_bandit, "mustafarian_salvage_bandit")
