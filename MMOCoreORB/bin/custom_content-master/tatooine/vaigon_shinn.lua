vaigon_shinn = Creature:new {
	customName = "Vaigon Shinn",
	socialGroup = "thug",
	faction = "thug",
	level = 15,
	chanceHit = 0.75,
	damageMin = 115,
	damageMax = 130,
	baseXp = 750,
	baseHAM = 1675,
	baseHAMmax = 2100,
	armor = 0,
	resists = {5,5,0,10,-1,5,-1,-1,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
			"object/mobile/dressed_nym_pirate_strong_nikto_m.iff"
	},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3800000},
				{group = "tailor_components", chance = 1000000},
				{group = "color_crystals", chance = 400000},
				{group = "g_medicine_exp_ring", chance = 400000},
				{group = "melee_unarmed", chance = 600000},
				{group = "melee_polearm", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000},
				{group = "g_munition_necklace", chance = 2000000}
			}
		}
	},
	weapons = "melee_weapons",
	conversationTemplate = "",
	attacks = merge(fencernovice,swordsmannovice,tkanovice,pikemannovice,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(vaigon_shinn, "vaigon_shinn")