ep3_blackscale_trooper_m_02 = Creature:new {
	customName = "an Avatar Guard Captain",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 105,
	chanceHit = 1.00,
	damageMin = 1150,
	damageMax = 1470,
	baseXp = 7500,
	baseHAM = 50000,
	baseHAMmax = 75000,
	armor = 2,
	resists = {60,60,80,60,55,65,85,45,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/ep3/ep3_blackscale_trooper_m_02.iff"},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 3000000},
				{group = "clothing_attachments", chance = 3000000},
				{group = "rifles", chance = 3000000},
				{group = "g_lance_cryo", chance = 200000},
				{group = "g_knife_trando_skinner", chance = 600000},
				{group = "pistols", chance = 200000},

			}
		}
	},

	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_blackscale_trooper_m_02, "ep3_blackscale_trooper_m_02")
