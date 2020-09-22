exar_kun_caretaker = Creature:new {
	customName = "the Caretaker of the Lost",
	socialGroup = "exar",
	faction = "",
	level = 200,
	chanceHit = 30.5,
	damageMin = 1725,
	damageMax = 2250,
	baseXp = 22411,
	baseHAM = 185000,
	baseHAMmax = 215000,
	armor = 2,
	resists = {160,180,165,190,185,200,180,165,-1},
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

	templates = {
		"object/mobile/exar_kun_caretaker.iff"
	},

	lootGroups = {
		{
			groups = {
				{group = "armor_attachments", chance = 2000000},
				{group = "clothing_attachments", chance = 2000000},
				{group = "melee_weapons", chance = 1750000},
				{group = "g_massassiknuckler", chance = 2000000},
				{group = "g_sword_massassi", chance = 2000000},
				{group = "g_power_plant_sith", chance = 250000},
			}
		}
	},
	weapons = {"unarmed_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermaster,tkamaster,forcewielder)
}

CreatureTemplates:addCreatureTemplate(exar_kun_caretaker, "exar_kun_caretaker")
