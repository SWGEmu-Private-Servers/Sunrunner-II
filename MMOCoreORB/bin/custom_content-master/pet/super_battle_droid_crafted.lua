super_battle_droid_crafted_crafted = Creature:new {
	objectName = "@mob/creature_names:super_battle_droid",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 189,
	damageMax = 196,
	baseXp = 0,
	baseHAM = 3000,
	baseHAMmax = 3200,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	scale = 1.15,
	templates = {
		"object/mobile/super_battle_droid.iff"
	},		
	lootGroups = {},
	defaultAttack = "creaturerangedattack",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	conversationTemplate = "",
	attacks = superbattledroidpet
}

CreatureTemplates:addCreatureTemplate(super_battle_droid_crafted_crafted, "super_battle_droid_crafted_crafted")
