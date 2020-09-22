ep3_rryatt_feral_wookiee_03 = Creature:new {
	customName = "a feral Wookiee",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "wookiee",
	faction = "wookiee_freedom_fighter",
	level = 105,
	chanceHit = 1.05,
	damageMin = 1150,
	damageMax = 1470,
	baseXp = 7500,
	baseHAM = 80000,
	baseHAMmax = 90000,
	armor = 2,
	resists = {60,60,60,60,60,60,60,60,-1},
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
	creatureBitmask = NONE,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_rryatt_feral_wookiee_03.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 5000000},
				{group = "loot_kit_parts", chance = 2700000},
				{group = "wearables_all", chance = 1000000},
				{group = "g_pistol_wookiee", chance = 975000},
				{group = "g_avatar_key", chance = 25000},
				{group = "g_wookiee_knuckler", chance = 300000}
			}
		}
	},
	weapons = {"wook_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_rryatt_feral_wookiee_03, "ep3_rryatt_feral_wookiee_03")
