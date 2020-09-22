overridden_security_droid = Creature:new {
	customName = "an Overridden security droid",
	socialGroup = "gasplant",
	faction = "",
	level = 90,
	chanceHit = 10,
	damageMin = 1010,
	damageMax = 1380,
	baseXp = 7920,
	baseHAM = 33450,
	baseHAMmax = 39750,
	armor = 2,
	resists = {165,160,150,150,155,150,175,150,-1},
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
		"object/mobile/dressed_droid_enemy_09.iff"
	},
	scale = 1.05,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "flail_common", chance = 2250000}
			}
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(overridden_security_droid, "overridden_security_droid")

