zorba_guard = Creature:new {
	customName = "Zorba's guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "hutt",
	faction = "hutt",
	level = 64,
	chanceHit = 1.32,
	damageMin = 450,
	damageMax = 650,
	baseXp = 1257,
	baseHAM = 14500,
	baseHAMmax = 15300,
	armor = 1,
	resists = {15,5,5,-1,-1,-1,-1,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_hutt_expedition_force_member.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3400000},
				{group = "tailor_components", chance = 1600000},
				{group = "loot_kit_parts", chance = 1600000},
				{group = "pistols", chance = 1200000},
				{group = "carbines", chance = 600000},
				{group = "rifles", chance = 1200000},
				{group = "clothing_attachments", chance = 200000},
				{group = "armor_attachments", chance = 200000},
			}
		}
	},
	weapons = {"ranged_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(zorba_guard, "zorba_guard")
