marauder = Creature:new {
	objectName = "@mob/creature_names:marauder",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "endor_marauder",
	faction = "endor_marauder",
	level = 74,
	chanceHit = 0.67,
	damageMin = 470,
	damageMax = 750,
	baseXp = 6370,
	baseHAM = 19000,
	baseHAMmax = 25900,
	armor = 1,
	resists = {45,35,25,6,6,6,0,0,-1},
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
	scale = 1.35,

	templates = {
		"object/mobile/dressed_marauder.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_pistol_dd6", chance = 1000000},
				{group = "g_punch_dagger", chance = 1000000},
				{group = "g_sword_mace_junti", chance = 1000000},
				{group = "melee_baton", chance = 1000000},
				{group = "g_sword_marauder", chance = 1250000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "marauder_armor", chance = 2200000},
				{group = "g_balance_necklace", chance = 500000},
				{group = "g_rare_jewelry", chance = 50000},
			}
		}
	},
	weapons = {"pirate_weapons_medium"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(marauder, "marauder")

