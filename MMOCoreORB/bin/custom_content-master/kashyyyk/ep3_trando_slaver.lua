ep3_trando_slaver = Creature:new {
	customName = "a Trandoshan slaver",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "trandoshan",
	faction = "",
	level = 80,
	chanceHit = 1.00,
	damageMin = 750,
	damageMax = 1070,
	baseXp = 3500,
	baseHAM = 11000,
	baseHAMmax = 18000,
	armor = 1,
	resists = {30,30,40,40,55,35,55,35,-1},
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
				"object/mobile/ep3/ep3_trando_slaver_01.iff",
				"object/mobile/ep3/ep3_trando_slaver_02.iff",
				"object/mobile/ep3/ep3_trando_slaver_03.iff",
				"object/mobile/ep3/ep3_trando_slaver_04.iff",
				"object/mobile/ep3/ep3_trando_slaver_05.iff"
				},

	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3500000},
				{group = "tailor_components", chance = 1000000},
				{group = "melee_two_handed", chance = 1000000},
				{group = "carbines", chance = 800000},
				{group = "pistols", chance = 800000},
				{group = "rifles", chance = 800000},
				{group = "g_rifle_trando_hunter", chance = 200000},
				{group = "clothing_attachments", chance = 950000},
				{group = "armor_attachments", chance = 937500},
				{group = "g_kash_furniture", chance = 12500},
				
			}
		}
	},
	weapons = {"trando_hunter_rifle"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(ep3_trando_slaver, "ep3_trando_slaver")
