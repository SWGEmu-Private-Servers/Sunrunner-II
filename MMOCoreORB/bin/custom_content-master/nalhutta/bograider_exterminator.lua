bograider_exterminator = Creature:new {
	customName = "a Bog Raider exterminator",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "bograider",
	faction = "",
	level = 110,
	chanceHit = 20.5,
	damageMin = 780,
	damageMax = 1150,
	baseXp = 10825,
	baseHAM = 26500,
	baseHAMmax = 30500,
	armor = 1,
	resists = {160,160,165,180,165,170,180,145,-1},
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
		"object/mobile/coa_lag_enforcer_hum_f.iff",
		"object/mobile/coa_lag_enforcer_hum_m.iff",
		"object/mobile/coa_lag_enforcer_hum_m2.iff"
	},

	lootGroups = {
		{

			groups = {
				{group = "loot_kit_parts", chance = 4000000},
				{group = "armor_attachments", chance = 750000},
				{group = "clothing_attachments", chance = 500000},
				{group = "g_carbine_charric", chance = 1100000},
				{group = "bloodrazor_common", chance = 3500000},
				{group = "g_power_plant_swamp", chance = 150000},
			}
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,commandomaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(bograider_exterminator, "bograider_exterminator")
