gas_plant_infiltrator = Creature:new {
	customName = "a gas plant infiltrator",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gasplant",
	faction = "",
	level = 110,
	chanceHit = 15,
	damageMin = 1220,
	damageMax = 1580,
	baseXp = 8920,
	baseHAM = 39950,
	baseHAMmax = 45750,
	armor = 2,
	resists = {165,160,155,150,160,155,180,150,-1},
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
		"object/mobile/npe/dressed_rakqua_witch_03.iff",
		"object/mobile/dressed_tatooine_jabba_thief.iff",
		"object/mobile/dressed_marooned_pirate_first_mate_rod_m.iff",
		"object/mobile/dressed_tatooine_gunrunner.iff"
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

CreatureTemplates:addCreatureTemplate(gas_plant_infiltrator, "gas_plant_infiltrator")

