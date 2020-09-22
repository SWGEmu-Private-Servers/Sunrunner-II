forgotten_officer = Creature:new {
	customName = "a Forgotten officer",
	socialGroup = "forgotten",
	faction = "",
	level = 129,
	chanceHit = 20,
	damageMin = 1050,
	damageMax = 1425,
	baseXp = 12235,
	baseHAM = 42500,
	baseHAMmax = 48250,
	armor = 2,
	resists = {165,165,160,160,160,160,170,155,-1},
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

	templates = {
		"object/mobile/azure_cabal_ixalak.iff",
		"object/mobile/azure_cabal_klaxi.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "loot_kit_parts", chance = 2750000},
				{group = "armor_attachments", chance = 750000},
				{group = "g_obscurity_earring", chance = 500000},
				{group = "clothing_attachments", chance = 750000},
				{group = "weequay_common", chance = 3000000},
				{group = "canyon_corsair_common", chance = 2000000},
				{group = "g_tampered_feed_mechanism", chance = 250000}
			}
		}
	},
	weapons = {"st_bombardier_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,commandomaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(forgotten_officer, "forgotten_officer")

