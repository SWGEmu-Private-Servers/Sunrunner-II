atst_special = Creature:new {
objectName = "@mob/creature_names:at_st",
	socialGroup = "imperial",
	faction = "imperial",
	level = 100,
	chanceHit = 14.75,
	damageMin = 2200,
	damageMax = 2450,
	baseXp = 11859,
	baseHAM = 32500,
	baseHAMmax = 35000,
	armor = 2,
	resists = {55,55,-1,55,55,55,55,55,55},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = COMBATVEHICLE,
	creatureBitmask = KILLER + PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/atst.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",


}

CreatureTemplates:addCreatureTemplate(atst_special, "atst_special")
