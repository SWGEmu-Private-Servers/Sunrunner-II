rebel_naboo_gcw_vendor = Creature:new {
	--customName = "an Alliance GCW Quartermaster",
	objectName = "@mob/creature_names:alliance_naboo_gcw_vendor",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "rebel",
	faction = "rebel",
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
		"object/mobile/dressed_rebel_recruiter_human_female_01.iff",
		"object/mobile/dressed_rebel_recruiter_human_female_02.iff",
		"object/mobile/dressed_rebel_recruiter_moncal_male_01.iff",
		"object/mobile/dressed_rebel_recruiter_twilek_female_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_ig_key", chance = 100000},
				{group = "junk", chance = 6200000},
				{group = "wearables_all", chance = 550000},
				{group = "wearables_scarce", chance = 550000},
				{group = "g_rare_jewelry", chance = 550000},
				{group = "wearables_rare", chance = 550000},
				{group = "g_exar_key", chance = 25000},
				{group = "g_axkva_key", chance = 25000},
				{group = "rebel_officer_common", chance = 450000},
				{group = "wearables_common", chance = 1000000}
			}
		}
	},
	weapons = {"rebel_weapons_heavy"},
	attacks = merge(riflemanmaster,pistoleermaster,carbineermaster,brawlermaster),
	conversationTemplate = "rebelnabooPvPrecruiterConvoTemplate",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",


}

CreatureTemplates:addCreatureTemplate(rebel_naboo_gcw_vendor, "rebel_naboo_gcw_vendor")
