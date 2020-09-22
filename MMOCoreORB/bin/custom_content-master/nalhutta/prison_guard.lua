prison_guard = Creature:new {
	customName = "a prison guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "prisonguard",
	faction = "",
	level = 70,
	chanceHit = 10,
	damageMin = 760,
	damageMax = 920,
	baseXp = 5920,
	baseHAM = 13950,
	baseHAMmax = 16750,
	armor = 1,
	resists = {155,160,150,150,145,150,175,145,-1},
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

	templates = {
		"object/mobile/dressed_forest_outcast_informant.iff",
		"object/mobile/dressed_mauler_beastmaster.iff",
		"object/mobile/dressed_murmur_research_security.iff",
		"object/mobile/dressed_myyydril_refugee_m_01.iff",
		"object/mobile/dressed_npe_sequencer_cantina2.iff",
		"object/mobile/npe/dressed_rakqua_guard_04.iff",
		"object/mobile/npe/dressed_rakqua_warrior_05.iff"
	},
	scale = 1.05,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "flail_common", chance = 2250000}
			}
		}
	},
	weapons = {"prison_guard_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,swordsmanmaster,tkamaster,fencermaster,marksmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(prison_guard, "prison_guard")
