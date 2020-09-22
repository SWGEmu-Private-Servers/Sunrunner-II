forgotten_guardian = Creature:new {
	customName = "a forgotten guardian",
	socialGroup = "oldrepublic",
	faction = "",
	level = 100,
	chanceHit = 12.5,
	damageMin = 775,
	damageMax = 1175,
	baseXp = 10549,
	baseHAM = 27500,
	baseHAMmax = 32500,
	armor = 1,
	resists = {170,170,155,170,160,155,170,155,-1},
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
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/som/som_ancient_guardian_droideka.iff"},
	lootGroups = {
		{
			groups = {
				{group = "junk", chance = 4000000},
				{group = "canyon_corsair_common", chance = 2000000},
				{group = "nyms_common", chance = 1000000},
				{group = "nyms_rare", chance = 500000},
				{group = "weequay_common", chance = 1000000},
				{group = "beldonnas_common", chance = 1000000},
				{group = "jabba_common", chance = 500000}
			}
		}
	},
	conversationTemplate = "",
	defaultWeapon = "object/weapon/ranged/droid/droid_droideka_ranged.iff",
	defaultAttack = "creaturerangedattack",
	attacks = merge(marksmannovice)

}

CreatureTemplates:addCreatureTemplate(forgotten_guardian, "forgotten_guardian")
