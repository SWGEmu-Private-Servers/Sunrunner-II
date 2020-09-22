snowtrooper = Creature:new {
	objectName = "@mob/creature_names:snow_trooper",
	randomNameType = NAME_STORMTROOPER,
	socialGroup = "imperial",
	faction = "imperial",
	level = 65,
	chanceHit = 0.66,
	damageMin = 350,
	damageMax = 500,
	baseXp = 5637,
	baseHAM = 23000,
	baseHAMmax = 25000,
	armor = 1,
	resists = {25,35,25,25,25,25,55,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + OVERT,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED + FACTIONAGGRO,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {"object/mobile/snowtrooper_s01.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 3490000},
				{group = "g_rifle_eweb", chance = 1500000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "carbines", chance = 1500000},
				{group = "clothing_attachments", chance = 750000},
				{group = "armor_attachments", chance = 750000},
				{group = "g_isd_key", chance = 10000}
			}
		}
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",		
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster,marksmanmaster)
}

CreatureTemplates:addCreatureTemplate(snowtrooper, "snowtrooper")
