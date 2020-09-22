bograider_subduer = Creature:new {
	customName = "a Bog Raider subduer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bograider",
	faction = "",
	level = 95,
	chanceHit = 6,
	damageMin = 650,
	damageMax = 920,
	baseXp = 8815,
	baseHAM = 19500,
	baseHAMmax = 22500,
	armor = 1,
	resists = {160,160,140,150,150,150,180,140,-1},
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
		"object/mobile/coa_lag_personnel_hum_f1.iff",
		"object/mobile/coa_lag_personnel_hum_f2.iff",
		"object/mobile/coa_lag_personnel_hum_f3.iff",
		"object/mobile/coa_lag_personnel_hum_m1.iff",
		"object/mobile/coa_lag_personnel_hum_m2.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 750000},
				{group = "clothing_attachments", chance = 500000},
				{group = "g_carbine_charric", chance = 1100000},
				{group = "borvos_common", chance = 3500000},
				{group = "g_power_plant_swamp", chance = 150000},

			}
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,pistoleermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(bograider_subduer, "bograider_subduer")
