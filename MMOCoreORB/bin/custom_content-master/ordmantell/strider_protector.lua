strider_protector = Creature:new {
	objectName = "@mob/creature_names:strider_protector",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "strider",
	faction = "strider",
	level = 130,
	chanceHit = 7.5,
	damageMin = 1400,
	damageMax = 1685,
	baseXp = 10307,
	baseHAM = 77850,
	baseHAMmax = 87350,
	armor = 2,
	resists = {170,165,200,175,155,200,185,160,-1},
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

	templates = {
		"object/mobile/ep3/ep3_etyyy_ehartt_brihnt.iff",
		"object/mobile/som/coyn_trooper.iff"
	},
	scale = 1.1,
	lootGroups = {
		{

			groups = {
				{group = "loot_kit_parts", chance = 2400000},
				{group = "junk", chance = 1500000},
				{group = "desert_demon_common", chance = 3300000},
				{group = "clothing_attachments", chance = 700000},
				{group = "wearables_rare", chance = 1500000},
				{group = "g_quickshot_ring", chance = 500000},
				{group = "g_quickshot_necklace", chance = 100000},
			}
		}
	},
	weapons = {"strider_protector_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/slang",
	attacks = merge(tkamaster,marksmanmaster,fencermaster,brawlermaster,carbineermaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(strider_protector, "strider_protector")
