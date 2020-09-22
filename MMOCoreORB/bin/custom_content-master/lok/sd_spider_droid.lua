sd_spider_droid = Creature:new {
	customName = "SD-915 (Elesandra's crowning achievement)",
	socialGroup = "crimson",
	faction = "",
	level = 173,
	chanceHit = 13.5,
	damageMin = 825,
	damageMax = 1250,
	baseXp = 16411,
	baseHAM = 100000,
	baseHAMmax = 125000,
	armor = 2,
	resists = {170,170,150,170,170,180,200,160,-1},
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
	diet = NONE,
	scale = 1.75,

	templates = {
		"object/mobile/dwarf_spider_droid.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 8500000},
				{group = "g_sd_spider_droid_necklace", chance = 1500000}
			},
			lootchance = 10000000
		}
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(sd_spider_droid, "sd_spider_droid")