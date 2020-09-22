shadow_mother = Creature:new {
	customName = "Mother of the Shadows",
	socialGroup = "webweaver",
	faction = "",
	level = 265,
	chanceHit = 90.5,
	damageMin = 1875,
	damageMax = 2650,
	baseXp = 26500,
	baseHAM = 187500,
	baseHAMmax = 247500,
	armor = 3,
	resists = {175,160,190,150,185,165,200,160,-1},
	meatType = "meat_insect",
	meatAmount = 555,
	hideType = "hide_scaley",
	hideAmount = 375,
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
	scale = 7,	
	lootGroups = {
		{
			groups = {
				{group = "g_webweaver_toxin_boss", chance = 10000000},				
			},
			lootChance = 7500000
		}
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},	
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareableeding","stateAccuracyBonus=25"},
		{"wbossareaknockdown","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(shadow_mother, "shadow_mother")