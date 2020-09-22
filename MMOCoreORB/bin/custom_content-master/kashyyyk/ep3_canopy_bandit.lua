ep3_canopy_bandit = Creature:new {
	customName = "a canopy bandit",
	socialGroup = "canopy_bandit",
	faction = "canopy_bandit",
	level = 70,
	chanceHit = 10.5,
	damageMin = 880,
	damageMax = 1390,
	baseXp = 9609,
	baseHAM = 14500,
	baseHAMmax = 16750,
	armor = 1,
	resists = {145,145,40,160,170,150,155,35,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/ep3/ep3_canopy_bandit_03.iff",
		"object/mobile/ep3/ep3_canopy_bandit_04.iff"
		},
	lootGroups = {				
				{group = "junk", chance = 2700000},
				{group = "tailor_components", chance = 900000},
				{group = "melee_two_handed", chance = 1250000},
				{group = "carbines", chance = 1250000},
				{group = "g_pistol_ion_stunner", chance = 250000},
				{group = "rifles", chance = 1350000},
				{group = "g_rifle_trando_hunter", chance = 200000},
				{group = "clothing_attachments", chance = 1050000},
				{group = "armor_attachments", chance = 1037500},
				{group = "g_kash_furniture", chance = 12500},
				
			}
		}
	},
	weapons = {"pirate_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster,fencermaster,pikemanmaster,pistoleermaster)
}

CreatureTemplates:addCreatureTemplate(ep3_canopy_bandit, "ep3_canopy_bandit")