gungan_bruiser = Creature:new {
	customName = "a Gungan bruiser",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gungan",
	faction = "gungan",
	level = 14,
	chanceHit = 0.75,
	damageMin = 100,
	damageMax = 120,
	baseXp = 634,
	baseHAM = 1475,
	baseHAMmax = 1975,
	armor = 0,
	resists = {5,5,0,0,5,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	diet = HERBIVORE,

	templates = {"object/mobile/gungan_male.iff"},
	scale = 1.1,
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "g_structure_assembly_ring", chance = 500000},
				{group = "gungan_common", chance = 2000000},
				{group = "tailor_components", chance = 2000000},
				{group = "loot_kit_parts", chance = 2000000}
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	attacks = merge(brawlernovice,marksmannovice)
}

CreatureTemplates:addCreatureTemplate(gungan_bruiser, "gungan_bruiser")