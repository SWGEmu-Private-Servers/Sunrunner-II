ancient_knowledge_seeker = Creature:new {
	customName = "the Seeker of Ancient Knowledge",
	socialGroup = "oldrepublic",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 1750,
	damageMax = 2975,
	baseXp = 24549,
	baseHAM = 355000,
	baseHAMmax = 415000,
	armor = 3,
	resists = {190,185,180,200,180,185,180,175,-1},
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
	scale = 1.15,

	templates = {"object/mobile/som/blackguard_wilder.iff"},

	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 3000000},
				{group = "g_lava_skiff", chance = 1500000},
				{group = "crystal_baass_wisdom", chance = 1000000},
				{group = "g_musty_house_loot_deed", chance = 1250000},
				{group = "g_lance_staff_magnaguard", chance = 3250000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(ancient_knowledge_seeker, "ancient_knowledge_seeker")