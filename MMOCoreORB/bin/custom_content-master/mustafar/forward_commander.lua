forward_commander = Creature:new {
	customName = "Forward Commander Mk II",
	socialGroup = "hk47",
	faction = "",
	level = 300,
	chanceHit = 95.5,
	damageMin = 975,
	damageMax = 1650,
	baseXp = 24549,
	baseHAM = 245000,
	baseHAMmax = 285000,
	armor = 2,
	resists = {175,165,155,150,165,155,200,160,-1},
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
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,


	templates = {"object/mobile/som/hk77.iff"},
	scale = 1.3,
	lootGroups = {
		{
			groups = {
				{group = "g_som_carbine_republic_sfor", chance = 3250000},
				{group = "g_som_rifle_mustafar_disruptor", chance = 3000000},
				{group = "g_som_disruptor_pistol", chance = 3250000},
				{group = "g_som_republic_flamer", chance = 250000},
				{group = "g_som_lava_cannon", chance = 250000}
			},
			lootChance = 9000000
		}

},
	weapons = {"ig106_weapons"},
	conversationTemplate = "",
	defaultAttack = "attack",
	attacks = {
		{"",""},
	}	
}



CreatureTemplates:addCreatureTemplate(forward_commander, "forward_commander")

