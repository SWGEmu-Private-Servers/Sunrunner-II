ep3_canopy_reaper_01 = Creature:new {
	customName = "a canopy reaper",
	randomNameType = NAME_GENERIC_TAG,
	socialGroup = "canopy_bandit",
	faction = "canopy_bandit",
	level = 175,
	chanceHit = 25.5,
	damageMin = 1850,
	damageMax = 2675,
	baseXp = 17500,
	baseHAM = 145000,
	baseHAMmax = 155000,
	armor = 2,
	resists = {170,165,170,185,155,185,175,150,-1},
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

	templates = {"object/mobile/ep3/ep3_canopy_reaper_01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 2700000},
				{group = "tailor_components", chance = 900000},
				{group = "melee_two_handed", chance = 1000000},
				{group = "carbines", chance = 1000000},
				{group = "g_pistol_ion_stunner", chance = 1000000},
				{group = "rifles", chance = 1000000},
				{group = "g_rifle_trando_hunter", chance = 200000},
				{group = "clothing_attachments", chance = 1050000},
				{group = "armor_attachments", chance = 1037500},
				{group = "g_kash_furniture", chance = 112500},
				
			}
		}
	},
	weapons = {"brenarka_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,tkamaster,pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_canopy_reaper_01, "ep3_canopy_reaper_01")