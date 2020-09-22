kkorrwrot = Creature:new {
	customName = "Kkorrwrot",
	socialGroup = "kkorrwrot",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 2850,
	damageMax = 4950,
	baseXp = 20859,
	baseHAM = 315000,
	baseHAMmax = 355000,
	armor = 3,
	resists = {180,175,170,165,170,200,200,160,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,
	scale = 2.5,


	templates = {"object/mobile/kkorrwrot.iff"},
	lootGroups = {
	 	{
			groups = {				
				{group = "g_avatar_key", chance = 2000000},
				{group = "g_kkorrwrot_trophy", chance = 5000000},	
				{group = "g_kkorrwrot_blood", chance = 3000000},
			},
		lootChance = 10000000
		}
	},
	weapons = {},
	attacks = {
		{"creatureareadisease","stateAccuracyBonus=25"},
		{"wbossareacombo","stateAccuracyBonus=100"},
		{"wbossareaknockdown","stateAccuracyBonus=100"},
		{"wbossareaattack","stateAccuracyBonus=100"}		
	}
}

CreatureTemplates:addCreatureTemplate(kkorrwrot, "kkorrwrot")