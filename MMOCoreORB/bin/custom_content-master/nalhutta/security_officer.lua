security_officer = Creature:new {
	customName = "a security officer",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "prisonguard",
	faction = "",
	level = 95,
	chanceHit = 15,
	damageMin = 930,
	damageMax = 1180,
	baseXp = 6820,
	baseHAM = 16250,
	baseHAMmax = 19850,
	armor = 1,
	resists = {160,160,150,155,150,160,175,150,-1},
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

	templates = {"object/mobile/dressed_murmur_admin_security.iff"
	},
	scale = 1.1,
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_demon_common", chance = 2500000},
				{group = "borvos_common", chance = 2250000},
				{group = "clothing_attachments", chance = 750000}
			}
		}
	},
	weapons = {"security_officer_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,fencermaster,tkamaster,pikemanmaster,marksmanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(security_officer, "security_officer")
