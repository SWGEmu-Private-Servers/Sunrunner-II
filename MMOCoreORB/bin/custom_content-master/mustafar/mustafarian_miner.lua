mustafarian_miner = Creature:new {
	objectName = "@mob/creature_names:mustafarian_miner",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mustafarianminer",
	faction = "",
	level = 60,
	chanceHit = 3.5,
	damageMin = 650,
	damageMax = 780,
	baseXp = 5120,
	baseHAM = 12550,
	baseHAMmax = 15750,
	armor = 1,
	resists = {155,165,145,180,145,150,40,150,-1},
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
		"object/mobile/som/mustafarian_m_01.iff",
		"object/mobile/som/mustafarian_m_02.iff"
	},
	lootGroups = {		
		{
			groups = {
				{group = "loot_kit_parts", chance = 3000000},
				{group = "junk", chance = 1500000},
				{group = "desert_swooper_common", chance = 2000000},
				{group = "borvos_common", chance = 1250000},
				{group = "flail_common", chance = 2250000}
			}
		}
	},
	weapons = {"strider_grunt_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,riflemanmaster,carbineermaster,marksmanmaster,tkamaster)
}

CreatureTemplates:addCreatureTemplate(mustafarian_miner, "mustafarian_miner")
