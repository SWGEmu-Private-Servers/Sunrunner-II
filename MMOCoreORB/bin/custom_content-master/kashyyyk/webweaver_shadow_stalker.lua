webweaver_shadow_stalker = Creature:new {
	customName = "a webweaver shadow stalker",
	socialGroup = "webweaver",
	faction = "",
	level = 185,
	chanceHit = 20.5,
	damageMin = 1375,
	damageMax = 1950,
	baseXp = 19500,
	baseHAM = 46750,
	baseHAMmax = 53700,
	armor = 2,
	resists = {165,160,190,145,180,160,200,155,-1},
	meatType = "meat_insect",
	meatAmount = 365,
	hideType = "hide_scaley",
	hideAmount = 185,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/webweaver.iff"},
	scale = 2,	
	lootGroups = {
		{
			groups = {
				{group = "g_webweaver_toxin", chance = 10000000},				
			},
			lootChance = 6500000
		}
	},
	weapons = {"creature_spit_small_toxicgreen"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},	
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareableeding","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(webweaver_shadow_stalker, "webweaver_shadow_stalker")