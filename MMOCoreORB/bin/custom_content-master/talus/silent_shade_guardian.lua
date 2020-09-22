silent_shade_guardian = Creature:new {
	customName = "Silent Shade guardian",
	socialGroup = "shade",
	faction = "",
	level = 92,
	chanceHit = 15.5,
	damageMin = 300,
	damageMax = 500,
	baseXp = 8615,
	baseHAM = 21500,
	baseHAMmax = 24000,
	armor = 1,
	resists = {160,160,150,140,165,150,145,140,-1},
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
		"object/mobile/dressed_cardas_guard_bot_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 3750000},
				{group = "nyms_common", chance = 4000000},
				{group = "armor_attachments", chance = 750000},
				{group = "g_carbine_underslung", chance = 1500000}

			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo","stateAccuracyBonus=50"},
		{"dizzyattack","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(silent_shade_guardian, "silent_shade_guardian")
