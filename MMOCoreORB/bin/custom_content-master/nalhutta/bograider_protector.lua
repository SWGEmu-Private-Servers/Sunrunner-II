bograider_protector = Creature:new {
	customName = "a Bog Raider protector",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bograider",
	faction = "",
	level = 140,
	chanceHit = 10,
	damageMin = 830,
	damageMax = 1280,
	baseXp = 13705,
	baseHAM = 37500,
	baseHAMmax = 44500,
	armor = 2,
	resists = {165,165,160,185,165,170,200,155,-1},
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
	scale = 1.1,
	
	templates = {
		"object/mobile/azure_cabal_troudge_roughian_f_01.iff",
		"object/mobile/bounty_check_fugitive_3.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 850000},
				{group = "g_carbine_charric", chance = 1500000},
				{group = "borvos_common", chance = 2750000},
				{group = "g_huttbunker_key", chance = 250000},
				{group = "g_power_plant_swamp", chance = 150000},
			}
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(bograider_protector, "bograider_protector")
