nest_guardian = Creature:new {
	customName = "the Nest's Guardian (an enraged carax)",
	socialGroup = "carax",
	faction = "",
	level = 400,
	chanceHit = 80,
	damageMin = 2775,
	damageMax = 4325,
	baseXp = 31811,
	baseHAM = 477500,
	baseHAMmax = 537000,
	armor = 3,
	resists = {195,195,185,180,200,180,200,180,-1},
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
	hues = { 46, 47, 48 },	
	scale = 5,
	lootGroups = {
	 {
	        groups = {
				{group = "g_carax_carapace", chance = 5000000},
				{group = "g_carax_venom", chance = 5000000},
				},
				lootChance = 10000000
						},

	{
	
		        groups = {
				{group = "g_carax_carapace", chance = 10000000},
			},
			lootChance = 10000000
				},

	{
	
			    groups = {
				{group = "g_carax_venom", chance = 10000000},
			},
			lootChance = 10000000
				},

	{

		groups = {

			{group = "g_exar_key", chance =  2000000},

			{group = "g_axkva_key", chance =  2000000},

			{group = "g_avatar_key", chance =  2000000},

			{group = "g_sherkar_key", chance =  2000000},

			{group = "g_ig_key", chance =  2000000}

			},

			lootChance = 10000000

			}

	},
	weapons = {"creature_spit_large_green"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=75"},
		{"wbossareaknockdown","stateAccuracyBonus=100"},
		{"wbossareaattack","stateAccuracyBonus=100"},
		{"wbossareacombo","stateAccuracyBonus=100"}

	}
}

CreatureTemplates:addCreatureTemplate(nest_guardian, "nest_guardian")
