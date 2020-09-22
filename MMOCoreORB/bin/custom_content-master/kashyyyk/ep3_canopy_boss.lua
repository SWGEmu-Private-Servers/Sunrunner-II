ep3_canopy_boss = Creature:new {
	customName = "a canopy boss",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "canopy_bandit",
	faction = "canopy_bandit",
	level = 200,
	chanceHit = 50.5,
	damageMin = 1975,
	damageMax = 2890,
	baseXp = 13000,
	baseHAM = 165000,
	baseHAMmax = 177500,
	armor = 3,
	resists = {180,180,180,160,155,155,175,150,-1},
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

	templates = {"object/mobile/ep3/ep3_canopy_boss.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 1000000},
				{group = "tailor_components", chance = 700000},
				{group = "melee_two_handed", chance = 1100000},
				{group = "carbines", chance = 1100000},
				{group = "g_pistol_ion_stunner", chance = 1100000},
				{group = "rifles", chance = 1100000},
				{group = "g_rifle_trando_hunter", chance = 1100000},
				{group = "clothing_attachments", chance = 1250000},
				{group = "armor_attachments", chance = 1237500},
				{group = "g_kash_furniture", chance = 312500},
				
			}
		}
	},
	weapons = {"daunting_enforcer_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,pikemanmaster,fencermaster,swordsmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_canopy_boss, "ep3_canopy_boss")