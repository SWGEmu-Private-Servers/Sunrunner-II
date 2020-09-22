blackscale_magna = Creature:new {
	customName = "NK-27 (a Blackscale prototype)",
	socialGroup = "trandoshan",
	faction = "blackscale",
	level = 300,
	chanceHit = 90.5,
	damageMin = 1525,
	damageMax = 2050,
	baseXp = 16884,
	baseHAM = 255000,
	baseHAMmax = 295000,
	armor = 3,
	resists = {170,170,170,170,170,170,170,170,-1},
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

	templates = {"object/mobile/ep3_myyydril_nk3.iff"},
	scale = 1.25,
	lootGroups = {
		{
			groups = {
				{group = "g_pistol_trando_suppressor", chance = 4000000},
				{group = "g_magnaguard_loot_schem", chance = 3000000},
				{group = "g_blackscale_stock", chance = 3000000}

			}
		}

	},

	weapons = {"magnaguard_staff"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,pikemanmaster,rend)
}

CreatureTemplates:addCreatureTemplate(blackscale_magna, "blackscale_magna")