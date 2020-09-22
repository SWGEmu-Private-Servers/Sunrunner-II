doira = Creature:new {
	customName = "Doira (Gorvald's officer)",
	socialGroup = "crimson",
	faction = "",
	level = 173,
	chanceHit = 20.5,
	damageMin = 975,
	damageMax = 1725,
	baseXp = 16411,
	baseHAM = 145000,
	baseHAMmax = 175000,
	armor = 2,
	resists = {170,170,160,150,170,165,155,150,-1},
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
		"object/mobile/coa_aclo_soldier_hum_f_01.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 6400000},				
				{group = "g_doira_ring", chance = 1500000},
				{group = "armor_attachments", chance = 1000000},
				{group = "clothing_attachments", chance = 1000000},
				{group = "g_ig_key", chance = 100000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"battle_droid_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,marksmanmaster,carbineermaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(doira, "doira")