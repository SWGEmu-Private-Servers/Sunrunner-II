tulrus_magma_drenched = Creature:new {
	objectName = "@monster_name:magma_drenched_tulrus",
	socialGroup = "tulrus",
	faction = "",
	level = 78,
	chanceHit = 1.5,
	damageMin = 730,
	damageMax = 870,
	baseXp = 7200,
	baseHAM = 16500,
	baseHAMmax = 18750,
	armor = 1,
	resists = {170,155,150,200,145,165,175,150,-1},
	meatType = "meat_reptilian",
	meatAmount = 375,
	hideType = "hide_scaley",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 350,
	milkType = "",
	milk = 0,
	tamingChance = 0,
	ferocity = 10,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/tulrus_magma_drenched.iff"},
	hues = { 55, 59, 60, 63, 75, 77, 79, 82 },
	lootGroups = {},
	scale = 1.2,
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaknockdown","stateAccuracyBonus=50"},
		{"posturedownattack","stateAccuracyBonus=50"}
	}

}

CreatureTemplates:addCreatureTemplate(tulrus_magma_drenched, "tulrus_magma_drenched")
