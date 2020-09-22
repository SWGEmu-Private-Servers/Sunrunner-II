katarn_adolescent = Creature:new {
	customName = "a katarn adolescent",
	socialGroup = "katarn",
	faction = "",
	level = 155,
	chanceHit = 50,
	damageMin = 1175,
	damageMax = 1650,
	baseXp = 16057,
	baseHAM = 48750,
	baseHAMmax = 55620,
	armor = 2,
	resists = {160,165,150,170,145,170,170,140,-1},
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
	scale = 0.9,	
	lootGroups = {
		{
		   groups = {				

			   {group = "g_katarn_claw", chance = 10000000},	

		   },
	   lootChance = 4500000
	   }
   },
	weapons = {},
	attacks = {
		{"strongpoison","stateAccuracyBonus=25"},
		{"creatureareaattack","stateAccuracyBonus=75"},
		{"creatureareacombo","stateAccuracyBonus=75"},
		{"creatureareableeding","stateAccuracyBonus=25"}		
	}
}

CreatureTemplates:addCreatureTemplate(katarn_adolescent, "katarn_adolescent")