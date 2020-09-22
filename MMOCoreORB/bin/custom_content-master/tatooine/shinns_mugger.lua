shinns_mugger = Creature:new {
	customName = "Shinn's mugger",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "thug",
	faction = "thug",
	level = 12,
	chanceHit = 0.64,
	damageMin = 80,
	damageMax = 135,
	baseXp = 162,
	baseHAM = 213,
	baseHAMmax = 318,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
				"object/mobile/dressed_nym_pirate_weak_hum_f.iff",
				"object/mobile/dressed_nym_pirate_weak_hum_m.iff",
				"object/mobile/dressed_nym_pirate_weak_nikto_m.iff",
				"object/mobile/dressed_nym_pirate_weak_rod_f.iff",
				"object/mobile/dressed_nym_pirate_weak_rod_m.iff"
				},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4600000},
				{group = "tailor_components", chance = 1000000},
				{group = "melee_unarmed", chance = 600000},
				{group = "melee_polearm", chance = 600000},
				{group = "pistols", chance = 600000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000},
				{group = "bloodrazor_common", chance = 2000000}
			}
		}
	},
	weapons = {"blood_razer_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(shinns_mugger, "shinns_mugger")
