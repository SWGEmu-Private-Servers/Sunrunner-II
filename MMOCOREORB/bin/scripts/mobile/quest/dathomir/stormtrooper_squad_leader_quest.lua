stormtrooper_squad_leader_quest = Creature:new {
	objectName = "@mob/creature_names:stormtrooper_squad_leader",
	randomNameType = NAME_STORMTROOPER,
	randomNameTag = true,
	socialGroup = "nightsister",
	faction = "nightsister",
	level = 110,
	chanceHit = 25.5,
	damageMin = 1350,
	damageMax = 1770,
	baseXp = 15822,
	baseHAM = 39700,
	baseHAMmax = 45900,
	armor = 2,
	resists = {160,170,150,180,170,150,155,45,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE + AGGRESSIVE + ENEMY,
	creatureBitmask = PACK + KILLER,
	diet = HERBIVORE,
	scale = 1.05,

	templates = {"object/mobile/dressed_stormtrooper_squad_leader_white_white.iff"},
	lootGroups = {
		{
			groups = {
					{group = "theme_park_loot_shoulder_pad_smc_vhaunda", chance = 10000000}
				},
			lootChance = 10000000
		}
	},
	weapons = {"stormtrooper_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/stormtrooper",
	personalityStf = "@hireling/hireling_stormtrooper",
	attacks = merge(riflemanmaster,carbineermaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(stormtrooper_squad_leader_quest, "stormtrooper_squad_leader_quest")