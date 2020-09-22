
cyber_dewback = Creature:new {
	customName = "a Cybernetically enhanced dewback",
	socialGroup = "cybernetic",
	faction = "",
	level = 173,
	chanceHit = 17.5,
	damageMin = 1150,
	damageMax = 1750,
	baseXp = 16411,
	baseHAM = 142500,
	baseHAMmax = 155000,
	armor = 2,
	resists = {175,175,160,170,170,160,200,160,-1},
	meatType = "meat_reptilian",
	meatAmount = 450,
	hideType = "hide_leathery",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 250,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/dewback_armored.iff"},
	scale = 1,
	lootGroups = {
		{
			groups = {
				{group = "g_ced_necklace", chance = 4000000},
				{group = "green_light_gem", chance = 6000000}				
			},
			lootChance = 10000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareadisease",""},
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(cyber_dewback, "cyber_dewback")