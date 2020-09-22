imperial_naboo_gcw_vendor = Creature:new {
	--customName = "an Imperial GCW Quartermaster",
	objectName = "@mob/creature_names:imperial_naboo_gcw_vendor",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 250,
	chanceHit = 30.5,
	damageMin = 1350,
	damageMax = 1950,
	baseXp = 26411,
	baseHAM = 285000,
	baseHAMmax = 350000,
	armor = 3,
	resists = {175,175,165,170,165,170,160,140,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + CONVERSABLE,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_imperial_officer_f.iff",
		"object/mobile/dressed_imperial_officer_m.iff",
		"object/mobile/dressed_imperial_officer_m_2.iff",
		"object/mobile/dressed_imperial_officer_m_3.iff",
		"object/mobile/dressed_imperial_officer_m_4.iff",
		"object/mobile/dressed_imperial_officer_m_5.iff",
		"object/mobile/dressed_imperial_officer_m_6.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_isd_key", chance = 100000},
				{group = "junk", chance = 6200000},
				{group = "wearables_all", chance = 550000},
				{group = "wearables_scarce", chance = 550000},
				{group = "g_rare_jewelry", chance = 550000},
				{group = "wearables_rare", chance = 525000},
				{group = "g_ig_key", chance = 25000},				
				{group = "g_exar_key", chance = 25000},
				{group = "g_axkva_key", chance = 25000},
				{group = "imperial_officer_common", chance = 450000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"imperial_weapons_heavy"},
	conversationTemplate = "imperialNabooPvPrecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(imperial_naboo_gcw_vendor, "imperial_naboo_gcw_vendor")
