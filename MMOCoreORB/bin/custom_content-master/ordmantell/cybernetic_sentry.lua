cybernetic_sentry = Creature:new {
	customName = "Cybernetic Sentry",
	socialGroup = "cybernetic",
	faction = "",
	level = 98,
	chanceHit = 4.5,
	damageMin = 630,
	damageMax = 950,
	baseXp = 9336,
	baseHAM = 23500,
	baseHAMmax = 29500,
	armor = 1,
	resists = {155,155,150,145,160,160,145,140,-1},
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
		"object/mobile/dressed_droid_enemy_01.iff",
		"object/mobile/dressed_droid_enemy_02.iff",
		"object/mobile/dressed_droid_enemy_03.iff",
		"object/mobile/dressed_droid_enemy_04.iff",
		"object/mobile/dressed_droid_enemy_05.iff",
		"object/mobile/dressed_droid_enemy_06.iff",
		"object/mobile/dressed_droid_enemy_07.iff",
		"object/mobile/dressed_droid_enemy_08.iff",
		"object/mobile/dressed_droid_enemy_09.iff",
		"object/mobile/dressed_droid_enemy_10.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "nyms_common", chance = 9000000},
				{group = "g_cybernetic_research_layer", chance = 1000000}
			}
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(pistoleermaster,carbineermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(cybernetic_sentry, "cybernetic_sentry")

