rodian_outcast_exchange = Creature:new {
	objectName = "",
	customName = "Akojo (a Rodian hunter outcast)",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "townsperson",
	level = 25,
	chanceHit = 1,
	damageMin = 15,
	damageMax = 25,
	baseXp = 123,
	baseHAM = 11500,
	baseHAMmax = 12000,
	armor = 1,
	resists = {15,15,15,15,15,35,15,45,55},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = NONE,
	creatureBitmask = NONE,
	optionsBitmask = 264,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_blood_razor_pirate_guard_rod_m.iff",		
		"object/mobile/dressed_blood_razor_pirate_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_scout_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_strong_rod_m.iff",
		"object/mobile/dressed_blood_razor_pirate_weak_rod_m.iff"},

		
	scale = 1.1,		
        lootGroups = {},
        weapons = {},
        conversationTemplate = "rodian_outcast_exchange_template",
        attacks = {
   }
}

CreatureTemplates:addCreatureTemplate(rodian_outcast_exchange, "rodian_outcast_exchange")
