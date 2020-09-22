branch_dwelling_webweaver = Creature:new {
	customName = "a branch dwelling webweaver",
	socialGroup = "webweaver",
	faction = "",
	level = 105,
	chanceHit = 20.5,
	damageMin = 975,
	damageMax = 1450,
	baseXp = 15500,
	baseHAM = 34500,
	baseHAMmax = 39700,
	armor = 1,
	resists = {160,155,170,40,160,150,200,145,-1},
	meatType = "meat_insect",
	meatAmount = 195,
	hideType = "hide_scaley",
	hideAmount = 75,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/webweaver.iff"},
	scale = 1.4,	
	lootGroups = {
		{
			groups = {
				{group = "g_webweaver_toxin", chance = 10000000},				
			},
			lootChance = 6500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},	
		{"creatureareacombo","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(branch_dwelling_webweaver, "branch_dwelling_webweaver")