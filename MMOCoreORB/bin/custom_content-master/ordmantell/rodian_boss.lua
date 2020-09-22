rodian_boss = Creature:new {
	objectName = "",
	customName = "Juanti Ohkloon (a Rodian hunter boss)",
	socialGroup = "rodian",
	pvpFaction = "",
	faction = "",
	level = 280,
	chanceHit = 45,
	damageMin = 1145,
	damageMax = 1625,
	baseXp = 16845,
	baseHAM = 194525,
	baseHAMmax = 195450,
	armor = 3,
	resists = {95,95,15,65,75,15,15,15,15},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = 128,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_blood_razor_pirate_strong_rod_m.iff"},
	scale = 1.3,		
	lootGroups = {
		{
			groups = {
				{group = "rodian_boss", chance = 10000000},
				
			},
			lootChance = 10000000
		}
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster)
}

CreatureTemplates:addCreatureTemplate(rodian_boss, "rodian_boss")
