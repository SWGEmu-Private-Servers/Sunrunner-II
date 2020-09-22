unkajo = Creature:new {
	customName = "Unkajo",
	socialGroup = "kyrisa",
	faction = "",
	level = 250,
	chanceHit = 70,
	damageMin = 1200,
	damageMax = 1900,
	baseXp = 26411,
	baseHAM = 335000,
	baseHAMmax = 375000,
	armor = 3,
	resists = {190,190,185,170,200,185,190,175,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "hide_leathery",
	hideAmount = 900,
	boneType = "bone_mammal",
	boneAmount = 850,
	milk = 0,
	tamingChance = 0,
	ferocity = 11,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_wampa.iff"},
	scale = 1.5,
	lootGroups = {
		{
			groups = {
				{group = "wampa_common", chance = 4000000},
				{group = "armor_all", chance = 2000000},
				{group = "wearables_rare", chance = 2500000},
				{group = "wearables_scarce", chance = 1500000}
			},
			lootChance = 2000000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=75"},
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareaknockdown","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(unkajo, "unkajo")
