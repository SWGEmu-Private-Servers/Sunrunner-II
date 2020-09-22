dark_jedi_master = Creature:new {
	objectName = "@mob/creature_names:dark_jedi_master",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "dark_jedi",
	faction = "",
	level = 291,
	chanceHit = 27.25,
	damageMin = 1800,
	damageMax = 3310,
	baseXp = 27849,
	baseHAM = 321000,
	baseHAMmax = 392000,
	armor = 3,
	resists = {90,90,90,90,90,90,90,90,-1},
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
	creatureBitmask = KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = { "dark_jedi" },
	lootGroups = {
		{
			groups = {
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "power_crystals", chance = 600000},
				{group = "rifles", chance = 1000000},
				{group = "pistols", chance = 1000000},
				{group = "melee_weapons", chance = 1000000},
				{group = "armor_attachments", chance = 1100000},
				{group = "clothing_attachments", chance = 1100000},
				{group = "carbines", chance = 1000000},
				{group = "dark_jedi_common", chance = 800000},
				{group = "g_exar_key", chance =  1200000},
			}
		}
	},
	weapons = {"dark_jedi_weapons_gen4"},
	conversationTemplate = "",
	attacks = merge(lightsabermaster,forcepowermaster)
}

CreatureTemplates:addCreatureTemplate(dark_jedi_master, "dark_jedi_master")
