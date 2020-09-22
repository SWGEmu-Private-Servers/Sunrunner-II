brenarka = Creature:new {
	customName = "Brenarka (the head of prison security)",
	socialGroup = "prisonguard",
	faction = "",
	level = 105,
	chanceHit = 20,
	damageMin = 1080,
	damageMax = 1300,
	baseXp = 7520,
	baseHAM = 46750,
	baseHAMmax = 51850,
	armor = 1,
	resists = {165,165,150,165,155,170,180,155,-1},
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

	templates = {"object/mobile/npe/dressed_rakqua_bowman_04.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_demon_common", chance = 1500000},
				{group = "borvos_common", chance = 2250000},
				{group = "clothing_attachments", chance = 1750000}
			}
		}
	},
	weapons = {"brenarka_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(brenarka, "brenarka")
