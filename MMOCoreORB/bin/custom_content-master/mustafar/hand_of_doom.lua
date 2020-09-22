hand_of_doom = Creature:new {
	customName = "a hand of doom",
	socialGroup = "factory",
	faction = "",
	level = 150,
	chanceHit = 25.5,
	damageMin = 475,
	damageMax = 775,
	baseXp = 12549,
	baseHAM = 65000,
	baseHAMmax = 87000,
	armor = 2,
	resists = {170,170,175,160,175,170,185,165,-1},
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


	templates = {"object/mobile/union_sentry_droid_crafted.iff"},
	scale = 1.15,
	lootGroups = {
},
	defaultAttack = "defaultdroidattack",
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
	attacks = merge(marksmanmaster,pistoleernovice)

}

CreatureTemplates:addCreatureTemplate(hand_of_doom, "hand_of_doom")


