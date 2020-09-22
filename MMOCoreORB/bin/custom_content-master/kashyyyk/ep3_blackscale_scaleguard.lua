ep3_blackscale_scaleguard = Creature:new {
	customName = "an Avatar Scalelord",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 105,
	chanceHit = 1.05,
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

	templates = {"object/mobile/ep3/ep3_blackscale_scaleguard.iff"},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "rifles", chance = 3000000},
				{group = "g_lance_cryo", chance = 700000},
				{group = "g_knife_trando_skinner", chance = 1100000},
				{group = "g_jellyfish_hologram", chance = 150000},
				{group = "g_power_plant_barc", chance = 50000},
				{group = "g_blackscale_stock", chance = 1000000},

			}
		}
	},

	weapons = {"pirate_weapons_heavy"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,commandomaster,bountyhuntermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_blackscale_scaleguard, "ep3_blackscale_scaleguard")
