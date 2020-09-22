lesser_katarn = Creature:new {
	objectName = "@mob/creature_names:lesser_katarn",
	socialGroup = "katarn",
	faction = "",
	level = 70,
	chanceHit = 1.5,
	damageMin = 650,
	damageMax = 800,
	baseXp = 16057,
	baseHAM = 15950,
	baseHAMmax = 18250,
	armor = 1,
	resists = {160,165,155,180,155,180,180,155,-1},
	meatType = "meat_wild",
	meatAmount = 200,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0.02,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/katarn.iff"},
	hues = { 8, 9, 10, 11, 12, 13 },
	controlDeviceTemplate = "object/intangible/pet/katarn.iff",	
	scale = 2.2,	
	lootGroups = {
		{
		   groups = {				

			   {group = "g_katarn_claw", chance = 10000000},	

		   },
	   lootChance = 1000000
	   }
   },
	weapons = {},
	attacks = {
		{"creatureareableeding","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"}		
	}
}

CreatureTemplates:addCreatureTemplate(lesser_katarn, "lesser_katarn")
