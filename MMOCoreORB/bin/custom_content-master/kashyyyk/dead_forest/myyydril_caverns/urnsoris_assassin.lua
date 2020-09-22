urnsoris_assassin = Creature:new {
	objectName = "@monster_name:urnsoris_assassin",
	socialGroup = "urnsoris",
	faction = "",
	level = 80,
	chanceHit = 1,
	damageMin = 625,
	damageMax = 825,
	baseXp = 7668,
	baseHAM = 17500,
	baseHAMmax = 21500,
	armor = 1,
	resists = {160,165,160,35,150,20,180,145,-1},
	meatType = "meat_insect",
	meatAmount = 25,
	hideType = "hide_scaley",
	hideAmount = 14,
	boneType = "",
	boneAmount = 0,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 12,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/urnsoris_assassin.iff"},
	lootGroups = {
		{
			groups = {
				{group = "g_urnsoris_tooth", chance = 10000000},				
			},
			lootChance = 2500000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},	
		{"creatureareableeding",""}
	}
}

CreatureTemplates:addCreatureTemplate(urnsoris_assassin, "urnsoris_assassin")
