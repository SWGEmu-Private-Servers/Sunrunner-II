kuat_butcher = Creature:new {
	customName = "a Kuat butcher",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "poacher",
	faction = "thug",
	level = 75,
	chanceHit = 1.5,
	damageMin = 680,
	damageMax = 830,
	baseXp = 6516,
	baseHAM = 17750,
	baseHAMmax = 21250,
	armor = 1,
	resists = {155,155,145,160,155,150,155,145,-1},
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
		"object/mobile/azure_cabal_capi.iff",
		"object/mobile/ep3/ep3_rryatt_deep_woods_poacher_04.iff",
		"object/mobile/ep3/ep3_etyyy_hunter_lesser_rodian_02.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "borvos_common", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000},
				{group = "clothing_attachments", chance = 500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "g_prowler_earring", chance = 500000},
			}
		}
	},
	weapons = {"gamorrean_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,brawlermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(kuat_butcher, "kuat_butcher")

