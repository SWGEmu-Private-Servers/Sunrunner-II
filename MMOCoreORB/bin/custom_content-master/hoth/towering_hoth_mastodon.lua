towering_hoth_mastodon = Creature:new {
	objectName = "@mob/creature_names:towering_hoth_mastodon",
	socialGroup = "hoth_tusked_thune",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 685,
	damageMax = 890,
	specialDamageMult = 3.5,
	baseXp = 9429,
	baseHAM = 16000,
	baseHAMmax = 19000,
	armor = 1,
	resists = {165,160,170,145,200,160,155,165,-1},
	meatType = "meat_herbivore",
	meatAmount = 1000,
	hideType = "hide_wooly",
	hideAmount = 950,
	boneType = "bone_mammal",
	boneAmount = 900,
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/beast_master/bm_mutated_thune.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_mutated_thune.iff",
	scale = 1.6,
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
		{"dizzyattack","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(towering_hoth_mastodon, "towering_hoth_mastodon")
