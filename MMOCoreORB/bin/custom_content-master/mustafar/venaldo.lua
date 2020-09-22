venaldo = Creature:new {
	customName = "Venaldo (a thief of ancient relics)",
	socialGroup = "oldrepublic",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1625,
	damageMax = 2325,
	baseXp = 24549,
	baseHAM = 290000,
	baseHAMmax = 335000,
	armor = 2,
	resists = {180,180,170,200,170,175,180,165,-1},
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
	scale = 1.15,

	templates = {"object/mobile/som/treasure_hunter_protector.iff"},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 4500000},
				{group = "g_power_plant_lava_skiff", chance = 1000000},
				{group = "g_orf_treasure_hunter", chance = 4500000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"canyon_corsair_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,carbineermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(venaldo, "venaldo")