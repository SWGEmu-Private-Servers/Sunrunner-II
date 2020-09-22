arakarra = Creature:new {
	customName = "Arakarra (the Sayormi Empress's pet)",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 250,
	chanceHit = 50,
	damageMin = 1450,
	damageMax = 1875,
	baseXp = 17250,
	baseHAM = 515000,
	baseHAMmax = 565820,
	armor = 3,
	resists = {185,190,200,175,190,190,200,185,-1},
	meatType = "meat_insect",
	meatAmount = 300,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 8,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/beast_master/bm_spiderclan_consort.iff"},
	scale = 3,
	lootGroups = {
		{
			groups = {
				{group = "g_exar_key", chance =  2000000},
				{group = "g_axkva_key", chance =  2000000},
				{group = "g_avatar_key", chance =  2000000},
				{group = "g_sherkar_key", chance =  2000000},
				{group = "g_ig_key", chance =  2000000}
			},
			lootchance = 10000000
		}
	},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=75"},
		{"wbossareaknockdown","stateAccuracyBonus=75"},
		{"wbossareaattack","stateAccuracyBonus=75"},
		{"wbossareacombo","stateAccuracyBonus=75"}
	}
}

CreatureTemplates:addCreatureTemplate(arakarra, "arakarra")