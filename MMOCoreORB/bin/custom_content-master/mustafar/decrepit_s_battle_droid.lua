decrepit_s_battle_droid = Creature:new {
	customName = "a decrepit super battle droid",
	socialGroup = "decrepit",
	faction = "",
	level = 200,
	chanceHit = 25.5,
	damageMin = 1100,
	damageMax = 2000,
	baseXp = 19000,
	baseHAM = 110000,
	baseHAMmax = 140000,
	armor = 2,
	resists = {175,185,190,50,190,15,30,175,-1},
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
	creatureBitmask = KILLER,
	optionsBitmask = AIENABLED,
	diet = NONE,
	scale = 1.40,

	templates = {"object/mobile/super_battle_droid.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack"
}

CreatureTemplates:addCreatureTemplate(decrepit_s_battle_droid, "decrepit_s_battle_droid")

