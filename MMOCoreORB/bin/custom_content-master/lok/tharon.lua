tharon = Creature:new {
	customName = "Tharon (a veteran Crimson Marauder demolitionist)",
	socialGroup = "crimson",
	faction = "",
	level = 185,
	chanceHit = 25.5,
	damageMin = 1025,
	damageMax = 1750,
	baseXp = 18611,
	baseHAM = 135000,
	baseHAMmax = 170000,
	armor = 2,
	resists = {190,150,190,150,150,190,190,150,-1},
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
		"object/mobile/coa_aclo_commando_nikto.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 1900000},
				{group = "g_tharon_bracelet", chance = 1000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "jabba_common", chance = 2250000},
				{group = "borvos_common", chance = 2250000},
				{group = "g_ig_key", chance = 100000}
			}
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,commandomaster)
}

CreatureTemplates:addCreatureTemplate(tharon, "tharon")

