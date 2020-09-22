savage_sayormi_spider = Creature:new {
	customName = "a savage Sayormi spined spider",
	socialGroup = "sayormi",
	faction = "sayormi",
	level = 110,
	chanceHit = 10,
	damageMin = 850,
	damageMax = 1275,
	baseXp = 8950,
	baseHAM = 35700,
	baseHAMmax = 41580,
	armor = 2,
	resists = {160,170,175,145,160,175,200,150,-1},
	meatType = "meat_insect",
	meatAmount = 130,
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
	scale = 2,
	lootGroups = {},
	weapons = {"creature_spit_small_red"},
	conversationTemplate = "",
	attacks = {
		{"creatureareapoison","stateAccuracyBonus=25"},
		{"creatureareacombo","stateAccuracyBonus=25"}
	}
}

CreatureTemplates:addCreatureTemplate(savage_sayormi_spider, "savage_sayormi_spider")
