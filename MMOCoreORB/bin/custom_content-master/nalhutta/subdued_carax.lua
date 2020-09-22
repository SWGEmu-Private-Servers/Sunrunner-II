subdued_carax = Creature:new {
	customName = "a subdued carax",
	socialGroup = "bograider",
	faction = "",
	level = 173,
	chanceHit = 18,
	damageMin = 1050,
	damageMax = 1750,
	baseXp = 16411,
	baseHAM = 165000,
	baseHAMmax = 210000,
	armor = 2,
	resists = {175,175,170,150,180,165,200,165,-1},
	meatType = "meat_carnivore",
	meatAmount = 1000,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/carax.iff"},
	scale = 3,
	lootGroups = {
		{
			groups = {
				
				{group = "g_carax_ring", chance = 10000000},
				
			}
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=50"},
		{"creatureareacombo","stateAccuracyBonus=50"}
	}
}

CreatureTemplates:addCreatureTemplate(subdued_carax, "subdued_carax")
