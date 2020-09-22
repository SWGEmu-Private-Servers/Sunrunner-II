bm_mutated_thune = Creature:new {
	objectName = "@monster_name:hoth_tusked_thune",
	socialGroup = "hoth_tusked_thune",
	faction = "",
	level = 64,
	chanceHit = 1,
	damageMin = 645,
	damageMax = 800,
	baseXp = 9429,
	baseHAM = 14000,
	baseHAMmax = 17000,
	armor = 1,
	resists = {130,145,30,-1,180,25,25,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 1000,
	hideType = "hide_wooly",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_thune.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_thune.iff",
	lootGroups = {
		{
			groups = {
				{group = "g_mastodon_hide_segments", chance = 10000000}
			},
			lootChance = 4000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(bm_mutated_thune, "bm_mutated_thune")

