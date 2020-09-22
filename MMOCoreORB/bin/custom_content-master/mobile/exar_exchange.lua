exar_exchange = Creature:new {
	objectName = "",
	customName = "Exar Exchange Dealer",
	socialGroup = "townsperson",
	pvpFaction = "townsperson",
	faction = "townsperson",
	level = 500,
	chanceHit = 300,
	damageMin = 1245,
	damageMax = 2000,
	baseXp = 26845,
	baseHAM = 9145253,
	baseHAMmax = 9154500,
	armor = 3,
	resists = {95,95,75,65,75,35,65,45,55},
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
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/exar_kun_fist_of_hate.iff"},
	--outfit = "exar_outfit",	
	scale = 1.1,		
        lootGroups = {},
        weapons = {},
        conversationTemplate = "",
        attacks = {
   }
}

CreatureTemplates:addCreatureTemplate(exar_exchange, "exar_exchange")