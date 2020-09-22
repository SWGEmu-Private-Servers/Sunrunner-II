detainment_officer = Creature:new {
	customName = "a detainment officer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "prisonguard",
	faction = "",
	level = 85,
	chanceHit = 12.5,
	damageMin = 890,
	damageMax = 1120,
	baseXp = 6420,
	baseHAM = 18250,
	baseHAMmax = 21850,
	armor = 1,
	resists = {160,160,150,155,150,160,175,145,-1},
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
		"object/mobile/dressed_bh_female_human_02.iff",
		"object/mobile/dressed_bh_male_mon_01.iff",
		"object/mobile/dressed_npe_spy_trainer.iff",
		"object/mobile/dressed_nym_arena_referee.iff",
		"object/mobile/dressed_tatooine_keska.iff",
		"object/mobile/npe/dressed_rakqua_warrior_03.iff"
	},
	scale = 1.05,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_demon_common", chance = 2500000},
				{group = "borvos_common", chance = 2250000},
				{group = "clothing_attachments", chance = 750000}
			}
		}
	},
	weapons = {"detainment_officer_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,marksmanmaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(detainment_officer, "detainment_officer")
