singing_mountain_clan_arch_witch_quest = Creature:new {
	objectName = "@mob/creature_names:singing_mtn_clan_arch_witch",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "mtn_clan",
	faction = "mtn_clan",
	level = 170,
	chanceHit = 25.5,
	damageMin = 1645,
	damageMax = 1970,
	baseXp = 23174,
	baseHAM = 133700,
	baseHAMmax = 142500,
	armor = 2,
	resists = {170,155,155,200,200,200,160,180,-1},
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
	creatureBitmask = PACK + KILLER + HEALER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dathomir_sing_mt_clan_arch_witch.iff"},
	lootGroups = {
        		{
			groups = {
				{group = "theme_park_loot_slave_collar_ns_geth", chance = 10000000}
			},
		lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster,fencermaster,swordsmanmaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(singing_mountain_clan_arch_witch_quest, "singing_mountain_clan_arch_witch_quest")