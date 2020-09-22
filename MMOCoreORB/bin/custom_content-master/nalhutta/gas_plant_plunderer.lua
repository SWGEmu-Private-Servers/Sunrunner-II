gas_plant_plunderer = Creature:new {
	customName = "a gas plant plunderer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gasplant",
	faction = "",
	level = 130,
	chanceHit = 35,
	damageMin = 1570,
	damageMax = 1850,
	baseXp = 10820,
	baseHAM = 59950,
	baseHAMmax = 72750,
	armor = 2,
	resists = {170,170,160,160,160,160,180,155,-1},
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
		"object/mobile/dressed_mercenary_commander_wee_m.iff",
		"object/mobile/dressed_sith_shadow_hum_f_02.iff",
		"object/mobile/dressed_brigade_officer_rodian_male_01.iff"
	},
	scale = 1.05,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "g_gas_plant_junk", chance = 1500000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "flail_common", chance = 2250000}
			}
		}
	},
	weapons = {"brenarka_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(gas_plant_plunderer, "gas_plant_plunderer")
