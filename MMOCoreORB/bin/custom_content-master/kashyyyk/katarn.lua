katarn = Creature:new {
	customName = "a Katarn",
	socialGroup = "katarn",
	faction = "",
	level = 300,
	chanceHit = 99.5,
	damageMin = 2770,
	damageMax = 4550,
	baseXp = 25057,
	baseHAM = 318500,
	baseHAMmax = 345700,
	armor = 3,
	resists = {170,175,165,170,155,170,170,155,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/katarn.iff"},
	scale = 3,	
	lootGroups = {
	 	{
	        groups = {				
				{group = "g_avatar_key", chance = 2000000},
				{group = "g_katarn_trophy", chance = 5000000},	
				{group = "g_katarn_claw", chance = 2500000},	
				{group = "g_katarn_claw_rare", chance = 500000},	

			},
		lootChance = 10000000
		}
	},
	weapons = {},
	attacks = {
		{"strongpoison","stateAccuracyBonus=75"},
		{"wbossareaattack","stateAccuracyBonus=100"},
		{"wbossareacombo","stateAccuracyBonus=75"},
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"wbossareaknockdown","stateAccuracyBonus=100"}		
	}
}

CreatureTemplates:addCreatureTemplate(katarn, "katarn")