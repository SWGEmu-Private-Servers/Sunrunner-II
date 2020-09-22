atat_special = Creature:new {
	objectName = "@mob/creature_names:at_at",
	socialGroup = "imperial",
	faction = "imperial",
	level = 100,
	chanceHit = 35.75,
	damageMin = 4050,
	damageMax = 4500,
	baseXp = 21728,
	baseHAM = 62000,
	baseHAMmax = 75000,
	armor = 3,
	resists = {75,75,-1,75,75,75,75,75,75},
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

	templates = {"object/mobile/atat.iff"},
	lootGroups = {},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",

}

CreatureTemplates:addCreatureTemplate(atat_special, "atat_special")