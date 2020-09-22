command_security_guard = Creature:new {
	objectName = "@mob/creature_names:command_security_guard",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "imperial",
	faction = "imperial",
	level = 17,
	chanceHit = 0.8,
	damageMin = 190,
	damageMax = 200,
	baseXp = 931,
	baseHAM = 2600,
	baseHAMmax = 3300,
	armor = 0,
	resists = {5,10,5,15,15,5,5,10,-1},
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

	templates = {"object/mobile/dressed_imperial_soldier_m.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 6900000},
				{group = "rifles", chance = 800000},
				{group = "pistols", chance = 800000},
				{group = "clothing_attachments", chance = 150000},
				{group = "armor_attachments", chance = 150000},
				{group = "wearables_common", chance = 1000000}
			},
			lootChance = 2300000
		}
	},
	weapons = {"imperial_weapons_light"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	personalityStf = "@hireling/hireling_military",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(command_security_guard, "command_security_guard")
