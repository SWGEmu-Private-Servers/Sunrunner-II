ai_controlled_atxt = Creature:new {
	customName = "AI-Controlled AT-XT",
	socialGroup = "cybernetic",
	faction = "",
	level = 173,
	chanceHit = 11.5,
	damageMin = 800,
	damageMax = 1350,
	baseXp = 16411,
	baseHAM = 98000,
	baseHAMmax = 115000,
	armor = 2,
	resists = {180,180,145,170,200,180,200,160,-1},
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
	diet = NONE,

	templates = {
		"object/mobile/atxt_toy.iff"
		},
	lootGroups = {
		{
			groups = {
				{group = "green_light_gem", chance = 9000000},
				{group = "g_atxt_ring", chance = 1000000}
			},
			lootchance = 10000000
		}
	},
	conversationTemplate = "",
	defaultAttack = "defaultdroidattack",
	defaultWeapon = "object/weapon/ranged/vehicle/vehicle_atst_ranged.iff",
}

CreatureTemplates:addCreatureTemplate(ai_controlled_atxt, "ai_controlled_atxt")